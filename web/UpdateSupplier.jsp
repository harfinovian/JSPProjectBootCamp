<%-- 
    Document   : InsertSupplier
    Created on : Jul 12, 2017, 10:41:28 AM
    Author     : C7
--%>

<%@page import="model.Supplier"%>
<%@page import="DAO.SupplierDAO"%>
<%@page import="DAOImpl.SupplierDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
            Supplier s = (Supplier)request.getAttribute("supplier");
       %>
        <form method="POST" action="prosesupdatesupplierservlet">
            <table>
                <tr>
                    <td>Id Supplier</td>
                    <td><input type="text"name="idsupplier" value="<%=s.getIdSupplier() %>"readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Kode Supplier : </td>
                    <td><input type="text" name="kodesupplier"value="<%=s.getKodesupplier()%>"/></td>
                </tr>
                <tr>
                    <td>Nama Supplier : </td>
                    <td><input type="text" name="namasupplier"value="<%=s.getNamasupplier()%>"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="submit" value="save"/>
                </tr>
            </table>
        </form>
    </body>
</html>
