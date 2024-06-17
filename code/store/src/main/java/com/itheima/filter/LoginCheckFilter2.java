package com.itheima.filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

// 在登录的前提下访问登录页面时直接到管理页面
@WebFilter("/jsp/login.jsp")
public class LoginCheckFilter2 extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException {
        // 若 cookies 中的登录信息有效就直接用该信息自动登录
        //LoginCheckFilter.autoLoginByCookie(req);

        HttpSession session = req.getSession(); // 获取会话
        String ctxPath = req.getServletContext().getContextPath();
        // 从会话域中获取 userName，若获取到对应用户名代表已登录
        if(session != null && session.getAttribute("userName") != null) {
            System.out.println(session.getAttribute("userName") + " logged in.");
            resp.sendRedirect(ctxPath + "/jsp/Manager_page_productList.jsp");
        }
        chain.doFilter(req, resp);
        System.out.println("filter2 over");
    }
}
