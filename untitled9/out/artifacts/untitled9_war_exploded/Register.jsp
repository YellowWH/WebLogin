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
    <title>Register</title>
</head>
<body>
<br><br><br><br><br><br>
    <form method="post" action="RegisterServlet" onsubmit="return check()">
        <div align="center">
            UserName:<input type="text" name="userName" id="userN"><br>
            Password:<input type="password" name="userPwd" id="userP"><br>
            PwdAgain:<input type="password" name="userPwd2" id="userP2"><br>
            <input type="submit" value="Register">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">
        </div>
    </form>
</body>
<script type="text/javascript" language="JavaScript">
    function check() {
        var checkn = document.getElementById("userN").value;
        var checkp = document.getElementById("userP").value;
        var checkp2 = document.getElementById("userP2").value;
        if (checkn=='')
        {
            alert('name is empty');
            return false;
        }else if(checkp=='') {
            alert('password is empty');
            return false;
        }else if(checkp2=='')
        {
            alert('password2 is empty');
            return false;
        }else return true;
    }
</script>
</html>
