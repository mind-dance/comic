package com.itheima.dao;


import com.itheima.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserDao {
    /**
     * 新增用户
     * @param user
     * @return 1 成功；0 失败
     */
    @Insert("insert into t_user(user_name, password, permission) " +
            "values (#{userName}, #{password}, #{permission}) ")
    int insertUser(User user);

    /**
     * 根据 uid 删除用户
     * @param uid
     * @return 1 成功；0 失败
     */
    @Delete("delete from t_user where uid = #{uid}")
    int deleteById(int uid);

    /**
     * 修改用户信息
     * @param user
     * @return 1 成功；0 失败
     */
    @Update("update t_user set user_name=#{userName}, password=#{password}, permission=#{permission} where uid=#{uid}")
    int updateUser(User user);

    /**
     * 根据 uid 查询用户
     * @param userId
     * @return 用户对象
     */
    @Select("select * from t_user where uid = #{userId}")
    @Result(column = "user_name", property = "userName")
    User selectById(int userId);

    /**
     * 根据用户名和密码查询用户
     * @param userName
     * @param password
     * @return 用户对象
     */
    @Select("select * from t_user where user_name = #{uname} and password = #{pwd}")
    @Result(column = "user_name", property = "userName")
    User selectByUnameAndPwd(@Param("uname")String userName, @Param("pwd")String password);

    /**
     * 查询所有用户
     * @return 用户对象列表
     */
    @Select("select * from t_user")
    @Results(@Result(column = "user_name", property = "userName"))
    List<User> selectAll();

    /**
     * 根据用户名查询用户，支持模糊搜索
     * @param userName
     * @return 用户对象列表
     */
    @Select("select * from t_user where user_name like concat('%', #{userName}, '%')")
    @Result(column = "user_name", property = "userName")
    List<User> selectUsersByName(String userName);

    /**
     * 根据用户名查询单个用户
     * @param userName
     * @return 用户对象
     */
    @Select("select * from t_user where user_name = #{userName}")
    @Result(column = "user_name", property = "userName")
    User selectUserByName(String userName);

    @Select("select permission from t_user where user_name = #{userName}")
    int selectPermissionByName(String userName);
}
