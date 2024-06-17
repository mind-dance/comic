package com.itheima.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private Integer uid;
    private String userName; // 用户名
    private String password; // 密码
    private Integer permission;  // 权限 超管 0，普通管理员 1
}
