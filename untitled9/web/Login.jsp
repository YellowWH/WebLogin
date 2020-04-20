<%--
  Created by IntelliJ IDEA.
  User: 黄　文輝
  Date: 2020/04/20
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<br><br><br><br><br><br>
    <form action="LoginServlet" method="post" onsubmit="return check()">
        <div align="center">
            Username:<input type="text" name="userName" id="userN"><br>
            Password:<input type="password" name="userPwd" id="userP"><br>
            <input type="submit" value="Login">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">
        </div>
    </form>
</body>
    <script type="text/javascript" language="JavaScript">
        function check() {
            var checkname = document.getElementById("userN").value;
            var checkpwd = document.getElementById("userP").value;
            if(checkname=='')
            {
                alert("name is empty");
                return false;
            }else if (checkpwd=='')
            {
                alert("password is empty");
                return false;
            }else
                return true;
        }
    </script>
</html>
