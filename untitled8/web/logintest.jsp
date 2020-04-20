<%--
  Created by IntelliJ IDEA.
  User: 黄　文輝
  Date: 2020/04/15
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<form action="LoginServlet" method="post" onsubmit="return check()"><br><br><br><br><br>
    <div align="center">
    username: <input type="text" name="userName" id="checkn" ><br><br>
    password: <input type="password" name="Pwd" id="checkp" ><br><br>
    <input type="submit" value="Login" >&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">
    </div>
</form>
</body>
    <script type="text/javascript" language="JavaScript" >
        function check() {
            var checkname = document.getElementById("checkn").value;
            var checkpwd = document.getElementById("checkp").value;
            if(checkname==''){
                alert('name is empty');
                return false;
            }else if(checkpwd=='')
            {
                alert('password is empty');
                return false;
            }else return true;
        }
    </script>
</html>
