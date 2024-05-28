package com.itheima.service;

import com.itheima.pojo.User;

import java.util.List;

public interface UserService {
    int save(User user);

    int delete(int uid);

    int update(User user);

    User getById(int pid);

    List<User> getAll();

    List<User> getByName(String userName);

    boolean isAdmin(String userName);
}
