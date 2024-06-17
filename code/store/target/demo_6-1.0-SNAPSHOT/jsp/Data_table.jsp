<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.notyanzu.acgn_wms.pojo.Product" %>
<%@ page import="com.notyanzu.acgn_wms.service.ProductService" %>
<%@ page import="com.notyanzu.acgn_wms.service.impl.ProductServiceImpl" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品数据页</title>
  <link rel="stylesheet" href="../css/Data-table.css">
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_l5qwnbiailr.css">
  <link rel="stylesheet" href="../icon-font/font_4014732_pacxm9kefzo/iconfont.css">
  <!--<style>
    @font-face {
      font-family: "iconfont";
      /* Project id 4014732 */
      src: url('iconfont.woff2?t=1681731151136') format('woff2'),
        url('iconfont.woff?t=1681731151136') format('woff'),
        url('iconfont.ttf?t=1681731151136') format('truetype');
    }
  </style>-->
</head>

<body>
  <div class="top-box">
    <li class="search-box">
      <input type="search" placeholder="Search...">
      <a href="<%=application.getContextPath()%>/jsp/choose.jsp"> <!--放大镜-->
        <i class="iconfont icon">&#xe610;</i>
      </a>
    </li>
    <li class="add-box">
      <a href="<%=application.getContextPath()%>/jsp/add%20goods.jsp"><!--增加-->
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
          <th>productname</th>
          <th>type</th>
          <th>writer</th>
          <th>count</th>
          <th>update</th>
          <th>delete</th>
        </tr>
        <%
          ProductService productService = new ProductServiceImpl();
           List<Product> user=productService.getAll();
           for(int i=0;i<user.size();i++){
        %>
        <tr>
        <td><%=user.get(i).getPid()%></td>
        <td><%=user.get(i).getProductName()%></td>
        <td><%=user.get(i).getProductCat()%></td>
        <td><%=user.get(i).getProductDesc()%></td>
        <td><%=user.get(i).getProductCount()%></td>
           <td>
             <a href="<%=application.getContextPath()%>/jsp/change%20goods.jsp">
               <i class="iconfont icon-xiugai"></i>
             </a>
           </td>
           <td>
             <a href="<%=application.getContextPath()%>/">  #这里是删除的按键
               <i class="iconfont icon-shanchu"></i>
             </a>
           </td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>

</html>