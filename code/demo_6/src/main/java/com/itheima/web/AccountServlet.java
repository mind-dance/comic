package com.itheima.web;

import com.itheima.config.SpringConfig;
import com.itheima.service.AccountService;
import com.itheima.service.impl.AccountServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet({"/account/login", "/account/logout", "/account/signup"})
public class AccountServlet extends HttpServlet {
    ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
    AccountService accountService=ctx.getBean(AccountService.class);
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String contextPath = req.getContextPath();
        // 模板方法
        String servletPath = req.getServletPath();
        System.out.println(contextPath + servletPath);
        if ("/account/login".equals(servletPath)) {
            if(login(req, resp)) { // 登录成功，跳转管理页面
                resp.sendRedirect(contextPath + "/jsp/Manager_page_productList.jsp");
            } else { // 登录失败
                resp.sendRedirect(contextPath + "/jsp/unameOrPwdErr.jsp");
            }
        }
        else if ("/account/logout".equals(servletPath)) {
            logout(req, resp);
            // 退出登录后回到主页，重定向到主页
            resp.sendRedirect(contextPath + "/home-page.jsp");
        }
        else if ("/account/signup".equals(servletPath)) {
            if (signup(req, resp)) { // 注册成功，跳转到登陆页面
                resp.sendRedirect(contextPath + "/jsp/login.jsp");
            } else { // 注册失败
                resp.sendRedirect(contextPath + "/jsp/registerErr.jsp");
            }
        }
    }

    private Boolean login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        // 获取请求的登录信息
        String userName = request.getParameter("userName");
        String password = request.getParameter("userPwd");


        if (accountService.login(userName, password)) { // 登陆成功，重定向到管理页面
            // 创建 cookie 并返回给浏览器
            Cookie cookie1 = new Cookie("userName", userName); // 创建 cookie 对象
            Cookie cookie2 = new Cookie("userPwd", password);
            cookie1.setMaxAge(60 * 60 * 8);   // 设置 cookie 在 8h 后失效
            cookie2.setMaxAge(60 * 60 * 8);
            cookie1.setPath(request.getContextPath()); // 设置 cookie 的关联路径
            cookie2.setPath(request.getContextPath());
            response.addCookie(cookie1);  // 将 cookie 响应到浏览器
            response.addCookie(cookie2);

            HttpSession session = request.getSession();      // 获取当前会话
            session.setAttribute("userName", userName); // 将 userName 存入会话域
            return true;
        }
        return false;
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("==============logout(): current cookies==============");
        for (Cookie cookie : request.getCookies()) {
            System.out.println(cookie.getName() + "=" + cookie.getValue());
        }
        System.out.println("=====================================================");
        // 防止之前登录过的 cookie 影响，清除 userName 和 userPwd
        Cookie cookie1 = new Cookie("userName", null);
        Cookie cookie2 = new Cookie("userPwd", null);
        cookie1.setMaxAge(0); // 设置有效时间为 0
        cookie2.setMaxAge(0);
        cookie1.setPath(request.getContextPath()); // 设置 cookie 的关联路径
        cookie2.setPath(request.getContextPath());
        response.addCookie(cookie1); // cookie 下发到浏览器
        response.addCookie(cookie2);

        HttpSession session = request.getSession();
        if(session != null) {
            session.invalidate(); // 销毁 session 对象
            System.out.println("logout");
        }
    }

    private Boolean signup(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        // 获取请求的注册信息
        String userName = request.getParameter("userName");
        String password = request.getParameter("userPwd");

        if(accountService.signup(userName, password)) { // 注册成功后跳转到登录页面
            logout(request, response); // 防止注册前登录过的账号的 cookie 影响
            return true;
        }
        return false;
    }
}
