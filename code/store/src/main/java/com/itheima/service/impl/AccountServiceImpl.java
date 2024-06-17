package com.itheima.service.impl;

import com.itheima.pojo.User;
import com.itheima.dao.UserDao;
import com.itheima.service.AccountService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AccountServiceImpl implements AccountService {
    @Resource
    private UserDao userDao;

    @Override
    public Boolean login(String userName, String password) {
        User user=userDao.selectByUnameAndPwd(userName,password);
        if(user == null) { // 没查询到该用户，登陆失败，返回 false
            System.out.println("Login failed.");
            return false;
        } else { // 登录成功，返回 true
            System.out.println("User [" + user.getUserName() + "] Login successful.");
            return true;
        }

    }

    @Override
    public Boolean signup(String userName, String password) throws RuntimeException {
        User user = userDao.selectUserByName(userName);
        if (user != null) { // 用户已存在 返回 false 注册失败
            System.out.println("User [" + user.getUserName() + "] already exists.");
            return false;
        } else {  // 将注册表单中的用户名和密码插入数据库，同时设置权限为普通人
            User userFrom = new User(null, userName, password, 1);
            if (userDao.insertUser(userFrom) == 1) { // 插入成功，返回 true 注册成功
                System.out.println("User [" + userFrom.getUserName() + "] signup successful.");
                return true;
            } else { // 插入失败，发生异常

                throw new RuntimeException("Unknown err.");
            }

        }
    }
    }
