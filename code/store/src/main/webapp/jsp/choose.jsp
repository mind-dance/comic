<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>筛选页面</title>
  <link rel="stylesheet" href="../css/choose.css">
</head>
<body>
  <div class="choose">
    <p>请选择想要查找的方式</p>
    <form action="url地址">
      <div class="wrap">
        <select name="goods" id="option">
          <option>序号</option>
          <option>名称</option>
          <option>类型</option>
          <option>作者</option>
          <option>库存</option>
        </select>
      </div>
      <div class="wrap-anniu">
        <a href="<%=application.getContextPath()%>/jsp/choose.jsp">
          <button>提交</button>
        </a>
        <a href="#">
          <button>返回</button>
        </a>
      </div>
    </form>
  </div>
  <div>
    <form>

    </form>
  </div>
</body>
</html>