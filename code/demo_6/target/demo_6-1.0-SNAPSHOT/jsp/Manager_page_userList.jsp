
<%@ page import="java.util.List" %>
<%@ page import="com.itheima.service.UserService" %>
<%@ page import="com.itheima.service.impl.UserServiceImpl" %>
<%@ page import="com.itheima.pojo.User" %>
<%@ page import="com.itheima.config.SpringConfig" %>
<%@ page import="org.springframework.context.annotation.AnnotationConfigApplicationContext" %>
<%@ page import="org.springframework.context.ApplicationContext" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>后台管理</title>
  <link rel="stylesheet" href="../css/Manager.css">
  <link href="https://fonts.googlefonts.cn/css?family=Poppins" rel="stylesheet">
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_5xyegniznbv.css">
  <!-- <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> -->
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4018417_cvfx9zef9m8.css">

  <link rel="stylesheet" href="../css/Administrator_list.css">
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_gv1qekurcl7.css">
  <link rel="stylesheet" href="../icon-font/font_4014732_pacxm9kefzo/iconfont.css">
</head>

<body>
  <nav class="sidebar close">
    <header>
      <div class="image-text">
        <span class="image">
          <img src="../img/apple.png" alt="logo">
        </span>

        <div class="text header-text">
          <%-- 从会话中获取当前用户名 --%>
          <span class="name"><%=session.getAttribute("userName")%></span>
          <span class="profession">Web developer</span>
        </div>
      </div>

      <i class="iconfont icon-arrow-right-bold toggle"></i>
    </header>

    <div class="menu-bar">
      <div class="menu">
        <li class="search-box">
          <i class="iconfont icon-search icon"></i>
          <form id="searchForm" action="<%=application.getContextPath()%>/jsp/Manager_page_searchUser.jsp">
            <input type="search" placeholder="Search..." name="name">
          </form>
        </li>
        <ul class="menu-links">
          <li class="nav-link">
            <a href="#" onclick="history.back()">
              <i class="iconfont icon-fanhuishangyiji icon"></i>
              <span class="text nav-text">返回</span>
            </a>
          </li>
          <li class="nav-link">
            <a href="<%=application.getContextPath()%>/jsp/Manager_page_productList.jsp">
              <i class="iconfont icon-shouye icon"></i>
              <span class="text nav-text">商品管理</span>
            </a>
          </li>
          <li class="nav-link">
            <a href="#" onclick="confirm('我不是吴彦组 qq group: 561430012')">
              <i class="iconfont icon-yijianfankui icon"></i>
              <span class="text nav-text">意见反馈</span>
            </a>
          </li>
          <li class="nav-link">
            <a href="#" onclick="alert('敬请期待')">
              <i class="iconfont icon-cangguan icon"></i>
              <span class="text nav-text">数据分析</span>
            </a>
          </li>
          <li class="nav-link">
            <a href="#">
              <i class="iconfont icon-quanzi icon"></i>
              <span class="text nav-text">管理员</span>
            </a>
          </li>
<%--          <li class="nav-link">--%>
<%--            <a href="#">--%>
<%--              <i class="iconfont icon-banben icon"></i>--%>
<%--              <span class="text nav-text">版本更新</span>--%>
<%--            </a>--%>
<%--          </li>--%>
        </ul>
      </div>
      
      <div class="bottom-content">
        <li class="">
          <a href="<%=application.getContextPath()%>/account/logout">
            <i class="iconfont icon-24gl-extractLeft icon"></i>
            <span class="text nav-text">离开</span>
          </a>
        </li>

        <li class="mode">
          <div class="moon-sun">
            <i class="iconfont icon-yueliang icon moon"></i>
            <i class="iconfont icon-taiyang-copy icon sun"></i>
          </div>

          <span class="mode-text text">Dark Mode</span>

          <div class="toggle-switch">
            <span class="switch"></span>
          </div>
        </li>
      </div>
    </div>
  </nav>

  <!-- 注意：引入其他网页放置在这个section标签里添加引入代码 -->
  <section class="main-home">
    <div class="top-box">
      <li class="search-box">
        <form action="<%=application.getContextPath()%>/jsp/Manager_page_searchUser.jsp">
          <input type="search" name="name" placeholder="Search...">
          <button type="submit"> <!--放大镜-->
            <i class="iconfont icon">&#xe610;</i>
          </button>
        </form>
      </li>
      <li class="add-box">
        <a href="<%=application.getContextPath()%>/jsp/Manager_page_addUser.jsp"><!--增加-->
          <i class="iconfont icon-pinleizengjia_o icon"></i>
        </a>
      </li>
<%--      <li class="choose-box">--%>
<%--        <a href="#"><!--筛选-->--%>
<%--          <i class="iconfont icon-shaixuan icon"></i>--%>
<%--        </a>--%>
<%--      </li>--%>
    </div>
    <div class="table-box">
      <table>
        <tbody>
          <tr>
            <th>uid</th>
            <th>用户名</th>
            <th>用户密码</th>
            <th>账户类型</th>
            <th>选项</th>
          </tr>
          <%
            ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
            UserService userService=ctx.getBean(UserService.class);
            List<User> users = userService.getAll();
            for(int i = 0; i < users.size(); i++) {
          %>
          <tr>
            <td><%=users.get(i).getUid()%></td>
            <td><%=users.get(i).getUserName()%></td>
            <td><%=users.get(i).getPassword()%></td>
            <td>
              <%if(users.get(i).getPermission() == 0) { // 如果权限是 0
                out.print("超级管理员");
              } else {
                out.print("仓管员");
              }%>
            </td>
            <td>
              <a href="<%=application.getContextPath()%>/jsp/Manager_page_changeUser.jsp?id=<%=users.get(i).getUid()%>">
                <i class="iconfont icon-xiugai"></i></a>
              &emsp;<span>|</span>&emsp;
              <a href="<%=application.getContextPath()%>/user/delete?id=<%=users.get(i).getUid()%>">
                <i class="iconfont icon-shanchu"></i>
              </a>
            </td>
          </tr>
          <%}%>
        </tbody>
      </table>
    </div>
  </section>

  <script src="../js/script.js"></script>
</body>

</html>