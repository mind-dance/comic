<%@ page import="com.notyanzu.acgn_wms.service.UserService" %>
<%@ page import="com.notyanzu.acgn_wms.service.impl.UserServiceImpl" %>
<%@ page import="com.notyanzu.acgn_wms.pojo.User" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>管理员数据页</title>
  <link rel="stylesheet" href="../css/Administrator list.css">
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_gv1qekurcl7.css">
  <link rel="stylesheet" href="../icon-font/font_4014732_pacxm9kefzo/iconfont.css">
  <style>
    @font-face {
      font-family: "iconfont";
      /* Project id 4014732 */
      /*src: url('iconfont.woff2?t=1681731151136') format('woff2'),
        url('iconfont.woff?t=1681731151136') format('woff'),
        url('iconfont.ttf?t=1681731151136') format('truetype');*/
    }
  </style>
</head>

<body>
  <div class="top-box">
    <li class="search-box">
      <input type="search" placeholder="Search...">
      <a href="#"> <!--放大镜-->
        <i class="iconfont icon">&#xe610;</i>
      </a>
    <li class="add-box">
    </li>
    <a href="#"><!--增加-->
        <i class="iconfont icon-pinleizengjia_o icon"></i>
      </a>
    </li>
    <li class="choose-box">
      <a href="#"><!--筛选-->
        <i class="iconfont icon-shaixuan icon"></i>
      </a>
    </li>
  </div>
  <div class="table-box">
    <table>
      <tbody>
        <tr>
          <th>id</th>
          <th>username</th>
          <th>password</th>
          <th>update</th>
          <th>delete</th>
        </tr>
        <%
          UserService userService=new UserServiceImpl();
          List<User> user=userService.getAll();
          for(int i=0;i<user.size();i++){
        %>
        <tr>
          <td><%=user.get(i).getUid()%></td>
          <td><%=user.get(i).getUserName()%></td>
          <td><%=user.get(i).getPassword()%></td>
          <td>
          <a href="#">
            <i class="iconfont icon-xiugai"></i>
          </a>
          </td>
          <td>
            <a href="#">
              <i class="iconfont icon-shanchu"></i>
            </a>
          </td>
        </tr>
      <%}%>
      </tbody>
    </table>
  </div>
</body>

</html>