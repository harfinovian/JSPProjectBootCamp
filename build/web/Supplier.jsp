<%-- 
    Document   : Supplier
    Created on : Jul 12, 2017, 10:37:12 AM
    Author     : C7
--%>

<%@page import="model.Person"%>
<%@page import="DAO.SupplierDAO"%>
<%@page import="DAOImpl.SupplierDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="model.Supplier"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        ${sessionScope.loggedin.username}
        <%
//            session = request.getSession();
//            Person p =(Person) session.getAttribute("loggedin");
//            out.print(p.getUsername());
        %>
        <table border="1">
            <tr>
                <th>IdSupplier</th>
                <th>KodeSupplier</th>
                <th>NamaSupplier</th>
                <th colspan="2">Action</th>
            </tr>
            <%
                //List<Supplier> ls =(List<Supplier>) request.getAttribute("listsupplier");
                //for(Supplier s : ls){                                    
            %>
            <c:forEach items="${listsupplier}" var="supplier">
            <tr>
                <%--<%= //s.getIdSupplier()%>--%>
                <td>${supplier.idSupplier}</td>
                <%--<%= //s.getKodesupplier()%>--%>
                <td>${supplier.kodesupplier}</td>
                <%--<%= //s.getNamasupplier()%>--%>
                <td>${supplier.namasupplier}</td>
                
                <%--<%=s.getIdSupplier()%>--%>
                <td><a href="formupdatesupplierservlet?id=${supplier.idSupplier}">Update</a></td>
                    <%--<%= //s.getIdSupplier()%>--%>
                <td><a href="prosesdeletesupplierservlet?id=${supplier.idSupplier}">Delete</a></td>
            </tr>
            </c:forEach>
            <%//} %>
        </table>
                <a href="InsertSupplier.jsp"> Insert Supplier</a>
    </body>
</html>
