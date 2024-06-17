package com.itheima.filter;


import com.itheima.config.SpringConfig;
import com.itheima.service.AccountService;
import com.itheima.service.UserService;
import com.itheima.service.impl.AccountServiceImpl;
import com.itheima.service.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;
import java.io.IOException;

// 在登录的前提下才可进入下面三个路径
@WebFilter({"/jsp/Manager_page_productList.jsp", "/jsp/Manager_page_userList.jsp", "/user", "/product"})
public class LoginCheckFilter extends HttpFilter {
    ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
    UserService userService=ctx.getBean(UserService.class);

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException {
        System.out.println("-------------------doFilter-------------------");
        for (Cookie cookie : req.getCookies()) {
            System.out.println(cookie.getName() + "=" + cookie.getValue());
        }
        System.out.println("-----------------------------------------------");
        // 若 cookies 中的登录信息有效就直接用该信息自动登录

        HttpSession session = req.getSession(); // 获取会话
        String userName = (String) session.getAttribute("userName"); // 从会话域获取用户名
        // 从会话域中获取 userName，若获取到对应用户名代表已登录
        if(session != null && userName != null) {
            String servletPath = req.getServletPath();
            System.out.println(session.getAttribute("userName") + " logged in, accessing " + servletPath);
            // 如果想进入用户管理页面或就行用户管理需要判断权限
            if("/jsp/Manager_page_userList.jsp".equals(servletPath) || servletPath.contains("/user/")) {
                if(userService.isAdmin(userName)) {
                    chain.doFilter(req, resp); // 是 admin 放行
                } else { // 权限不足
                    String ctxPath = req.getServletContext().getContextPath();
                    resp.sendRedirect(ctxPath + "/jsp/permissionErr.jsp");
                }
            } else { // 若不是访问 userList.jsp 不做处理，直接放行
                chain.doFilter(req, resp);
            }
        } else { // 未登录，跳转到登陆页面
            String ctxPath = req.getServletContext().getContextPath();
            resp.sendRedirect(ctxPath + "/jsp/login.jsp");
        }
        System.out.println("filter over");
    }


    static void autoLoginByCookie(HttpServletRequest req) {
        System.out.println("Using cookie");
        Cookie[] cookies = req.getCookies();
        String userName = null;
        String password = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if("userName".equals(cookie.getName())) {
                    userName = cookie.getValue();
                } else if("userPwd".equals(cookie.getName())) {
                    password = cookie.getValue();
                }
            }
        }
        ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
        AccountService accountService=ctx.getBean(AccountService.class);
        if(accountService.login(userName, password)) {
            HttpSession session = req.getSession(); // 获取会话
            session.setAttribute("userName", userName); // 将 userName 存入会话域
        }
    }
}
