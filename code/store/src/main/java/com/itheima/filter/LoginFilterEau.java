package com.itheima.filter;

import javax.servlet.*;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebFilter("/*")
public class LoginFilterEau extends HttpFilter {

    //标示符：表示当前用户未登录
    String NO_LOGIN_NO = "NO_LOGIN_NO";

    private boolean pass = false;
    //排除 url
    // String[] 此处的url路径需要登录后，才有权访问
    String[] excludeUrls = new String[]{"/jsp/Manager_page_userList.jsp"};

    /**过滤器
     * 判断访问 excludeUrls 中的 url 时是否登录
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpSession session = req.getSession();
        String uri = req.getRequestURI();

        if(excludeUrls != null){
            for(String url : excludeUrls){
                if (uri.indexOf(url) > -1){ // 只要 uri 在 excludeUrls 中就不执行
                    return;
                }
            }
        }
        // 只有存在于excludeUrls中的操作才进行“登录状态判断”
        if (!pass) {
            chain.doFilter(req, resp);
        } else {
            if(session.getAttribute("uid") != null){
                // System.out.println("userKey_session:"+session.getAttribute("userKey_session"));
                chain.doFilter(req, resp);
            }else{
                String requestType = req.getHeader("X-Requested-With");
                //判断是否是ajax请求
                if(requestType!=null && "XMLHttpRequest".equals(requestType)){
                    resp.getWriter().write(this.NO_LOGIN_NO);
                }else{
                    resp.sendRedirect(req.getContextPath()+"/user/login");
                }
                return;
            }
        }
    }
}
