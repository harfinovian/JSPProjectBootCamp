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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session = request.getSession();
            Person p =(Person) session.getAttribute("loggedin");
            out.print(p.getUsername());
        %>
        <table border="1">
            <tr>
                <th>IdSupplier</th>
                <th>KodeSupplier</th>
                <th>NamaSupplier</th>
                <th colspan="2">Action</th>
            </tr>
            <%
                List<Supplier> ls =(List<Supplier>) request.getAttribute("listsupplier");
                for(Supplier s : ls){                                    
            %>
            <tr>
                <td><%=s.getIdSupplier()%></td>
                <td><%=s.getKodesupplier()%></td>
                <td><%=s.getNamasupplier()%></td>    
                <td><a href="formupdatesupplierservlet?id=<%=s.getIdSupplier()%>">Update</a></td>
                <td><a href="prosesdeletesupplierservlet?id=<%=s.getIdSupplier()%>">Delete</a></td>
            </tr>
            <%} %>
        </table>
                <a href="InsertSupplier.jsp"> Insert Supplier</a>
    </body>
</html>
