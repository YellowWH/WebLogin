<%--
  Created by IntelliJ IDEA.
  User: 黄　文輝
  Date: 2020/04/15
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
</head>
<body>
<form method="post" action="RegisterServlet" onsubmit="return check()"><br><br><br><br><br>
    <div align="center">
    Username: <input type="text" name="userName" id="checkn"><br><br>
    Password: <input type="password" name="Pwd" id="checkp"><br><br>
    Password again: <input type="password" name="Pwd2" id="checkp2"><br><br>
    <input type="submit" value="Register">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">
    </div>
</form>
</body>
<script type="text/javascript" language="JavaScript" >
    function check() {
        var checkname = document.getElementById("checkn").value;
        var checkpwd = document.getElementById("checkp").value;
        var checkpwd2 = document.getElementById("checkp2").value;
        if(checkname==''){
            alert('name is empty');
            return false;
        }else if(checkpwd=='')
        {
            alert('password is empty');
            return false;
        }else if(checkpwd2==''){
            alert('password is empty');
            return false;
        }else return true;
    }
</script>
</html>