package com.itheima.web;

import com.itheima.config.SpringConfig;
import com.itheima.pojo.User;
import com.itheima.service.UserService;
import com.itheima.service.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/user/add", "/user/delete", "/user/update", "/user/getById", "/user/getAll"})
//@WebServlet("/user")
public class UserServlet extends HttpServlet {
    ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
    private UserService userService = ctx.getBean(UserService.class);
    /**
     * 分析请求数据，调用 UserService 中的对应方法
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String contextPath = req.getContextPath();
        // 模板方法
        String servletPath = req.getServletPath();
        System.out.println(contextPath + servletPath);
        if ("/user/add".equals(servletPath)) {
            add(req, resp);
        } else if ("/user/delete".equals(servletPath)) {
            delete(req, resp);
        } else if ("/user/update".equals(servletPath)) {
            update(req, resp);
        } else if ("/user/getById".equals(servletPath)) {
            getById(req, resp);
        } else if ("/user/getAll".equals(servletPath)) {
            getAll(req, resp);
        }
        // 执行完对应操作后出现打开用户管理页面
        resp.sendRedirect(contextPath + "/jsp/Manager_page_userList.jsp");
    }

    /**
     * 新增用户
     */
    public void add(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //1.获取用户
        int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        String password = request.getParameter("userPwd");
        int permission = Integer.parseInt(request.getParameter("permission"));
        //2.调用userService 的方法
        User user = new User(id,userName,password,permission);
        userService.save(user);
    }

    /**
     * 删除用户
     */
    public void delete(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //1. 获取 需要删除参数的 请求id
        int id = Integer.parseInt(request.getParameter("id"));
        //2.  调用service 层的方法进行删除
        userService.delete(id);
    }

    /**
     * 更新用户
     * @param request
     * @param response
     * @throws IOException
     */
    public void update(HttpServletRequest request ,HttpServletResponse response) throws IOException {
        //1.获取用户
        String userName = request.getParameter("userName");
        String password = request.getParameter("userPwd");
        Integer uid = Integer.parseInt(request.getParameter("id"));
        int permission = Integer.parseInt(request.getParameter("permission"));
        //2.调用userService 的方法更新用户
        userService.update(new User(uid,userName,password,permission));
    }

    /**
     * 根据 id 查询用户
     */
    public  void getById(HttpServletRequest request ,HttpServletResponse response)throws IOException{
        //1. 获取 需要删除参数的 请求id
        int id = Integer.parseInt(request.getParameter("id"));
        //2.  调用service 层的方法进行删除
        userService.getById(id);
    }
    /**
     * 获取全部的用户
     */
    public void getAll(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException {
        // 获取所有用户数据
        List<User> userList = userService.getAll();
        // 将用户列表放入request作用域中
        request.setAttribute("userList", userList);
    }
}

