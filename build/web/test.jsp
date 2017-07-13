<%-- 
    Document   : test
    Created on : Jul 12, 2017, 9:53:11 AM
    Author     : C7
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String nama = request.getParameter("nama");
            //out.print(nama);
        %>
        <input type="text" value="<%=nama%>"/>
    </body>
</html>
