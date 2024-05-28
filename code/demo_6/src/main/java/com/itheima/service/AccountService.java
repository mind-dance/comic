package com.itheima.service;

public interface AccountService {
    /**
     * 登录，查询数据库中是否有该和用户名和密码
     * @param userName
     * @param password
     * @return true，登录成功；false，登录失败
     */
    Boolean login(String userName, String password);

    /**
     * 注册，用户数据数据存入数据库
     * @param userName
     * @param password
     * @return true，注册成功；false，注册失败
     */
    Boolean signup(String userName, String password) throws RuntimeException;
}
