package com.itheima.service.impl;

import com.itheima.pojo.User;
import com.itheima.dao.UserDao;
import com.itheima.service.UserService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Override
    public int save(User user) {

        int flag = userDao.insertUser(user);
        return flag;
    }

    @Override
    public int delete(int uid) {
        int flag =userDao.deleteById(uid);
        return flag;
    }

    @Override
    public int update(User user) {
        int flag = userDao.updateUser(user);
        return flag;
    }

    @Override
    public User getById(int pid) {
        User user = userDao.selectById(pid);
        return user;
    }

    @Override
    public List<User> getAll() {
        List<User> productList = userDao.selectAll();
        return productList;
    }

    @Override
    public List<User> getByName(String userName) {
        List<User> productList =userDao.selectUsersByName(userName);
        return productList;
    }

    /**
     * 判断是否是超级管理员 Administrator
     * @param userName
     * @return true/false
     */
    @Override
    public boolean isAdmin(String userName) {

        if(userDao.selectPermissionByName(userName) == 0) {
            return true;
        }
        return false;
    }
}
