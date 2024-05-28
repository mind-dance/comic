<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录界面</title>
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_seb9wnhm9ap.css">
  <link rel="stylesheet" href="../css/login.css">
</head>
<body>
  <div class="top">
    <div class="logo">
      <a href="#">
        <h1>
          <span class="iconfont icon-bird"></span>
        </h1>
      </a>
    </div>
    <div class="help">
      <p>用户协议</p><span>|</span><p>隐私政策</p><span>|</span><p>帮助中心</p>
    </div>
  </div>
  <div class="login-box">
    <form action="<%=application.getContextPath()%>/account/login" method="post" name="login_item">
      <div class="tit">
        <h2>Login in</h2>
      </div>
      <div class="input-box">
        <label for="uname">用户名:</label>
        <input id="uname" type="text" name="userName" maxlength="16">
      </div>
      <div class="input-box">
        <label for="psw">密码:</label>
        <input id="psw" type="password" name="userPwd" maxlength="16">
      </div>
      <div class="btn-box" onclick="">
        <button type="button" onclick="submitForm()">登录</button>
      </div>
      <script>
        function submitForm() {
          const unameInput = document.getElementById("uname");
          const pswInput = document.getElementById("psw");
          const uname = unameInput.value;
          const psw = pswInput.value;
          if (uname.length == 0 || psw.length == 0) {
            alert("用户名和密码不能为空");
            return;
          }

          // 表单提交逻辑
          const form = document.forms["login_item"];
          form.submit();
        }
      </script>
    </form>
  </div>
  <div class="signin">
    <a href="<%=application.getContextPath()%>/jsp/signup.jsp">
      <p>前往注册</p>
    </a>
  </div>
</body>
</html>