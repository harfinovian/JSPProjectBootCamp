<%-- 
    Document   : login
    Created on : Jul 13, 2017, 9:47:17 AM
    Author     : C7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="loginservlet">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name ="username"/></td>                
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name ="password"/></td>
                </tr>
                <tr>
                    <td colspan ="2">
                        <input type="submit" value ="login"/>
                    </td>
                </tr>                
            </table>
        </form>
    </body>
</html>
