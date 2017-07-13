<%-- 
    Document   : Barang
    Created on : Jul 12, 2017, 10:37:26 AM
    Author     : C7
--%>

<%@page import="DAO.SupplierDAO"%>
<%@page import="DAOImpl.SupplierDAOImpl"%>
<%@page import="model.Supplier"%>
<%@page import="model.Barang"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1">
            <tr>
                <th>IdBarang</th>
                <th>NamaBarang</th>
                <th>Stok</th>
                <th>Harga</th>
                <th>Supplier</th>
                <th colspan="2">Action</th>
                <!--<th colspan="2">Action</th>-->
            </tr>
            <%
                List<Barang> ls =(List<Barang>) request.getAttribute("listbarang");
                for(Barang b : ls){  
            %>
            <tr>
                <td><%=b.getId()%></td>
                <td><%=b.getNamabarang()%></td>
                <td><%=b.getStok()%></td>    
                <td><%=b.getHarga()%></td>  
                <td><%=b.getSUPPLIERidSupplier().getIdSupplier()%></td>
                <td><a href="formupdatebarangservlet?id=<%=b.getId()%>">Update</a></td>
                <td><a href="prosesdeletesupplierservlet?id=<%=b.getId()%>">Delete</a></td>
            </tr>
            <%} %>
        </table>
                <a href="forminsertbarang"> Insert Barang</a>
    </body>
</html>
