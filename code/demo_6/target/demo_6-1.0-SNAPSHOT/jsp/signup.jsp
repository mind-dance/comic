<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>注册页面</title>
  <link rel="stylesheet" href="//at.alicdn.com/t/c/font_4014732_seb9wnhm9ap.css">
  <link rel="stylesheet" href="../css/signup.css">
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
  <div class="loginin-box">
    <form action="<%=application.getContextPath()%>/account/signup" method="post" name="signup_item">

      <div class="input-box">
        <label for="user">用户名:</label>
        <input id="user" type="text" name="userName" maxlength="16">
      </div>
      <div class="input-box">
        <label for="psw">密码:</label>
        <input id="psw" type="password" name="userPwd" maxlength="16">
      </div>
      <div class="input-box">
        <label for="confirmPsw">确认密码:</label>
        <input id="confirmPsw" type="password" maxlength="16" placeholder="请再次输入密码">
      </div>
<%--      <div class="input-box">--%>
<%--        <label for="quest">密保问题:</label>--%>
<%--        <input id="quest" type="text" maxlength="14">--%>
<%--      </div>--%>
<%--      <div class="input-box">--%>
<%--        <label for="answer">答案:</label>--%>
<%--        <input id="answer" type="text" maxlength="14">--%>
<%--      </div>--%>
      <div class="btn-box">
        <button type="button" onclick="submitForm()">注册</button>
      </div>

      <script>
        function submitForm() {
          const pswInput = document.getElementById("psw");
          const confirmPswInput = document.getElementById("confirmPsw");
          const psw = pswInput.value;
          const confirmPsw = confirmPswInput.value;

          // 检查密码位数
          if (psw.length < 6 || psw.length > 16) {
            alert("密码长度应为 6-16 位");
            return;
          }

          // 检查两次密码是否一致
          if (psw !== confirmPsw) {
            alert("两次输入的密码不一致");
            return;
          }

          // 表单提交逻辑
          const form = document.forms["signup_item"];
          form.submit();
        }
      </script>
    </form>
  </div>
</body>

</html>