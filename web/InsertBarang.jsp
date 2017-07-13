<%-- 
    Document   : InsertBarang
    Created on : Jul 12, 2017, 10:42:26 AM
    Author     : C7
--%>

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
         <form method="POST" action="prosesinsertbarangservlet">
            <table>
                <tr>
                    <td>Nama Barang : </td>
                    <td><input type="text" name="namabarang"/></td>
                </tr>
                <tr>
                    <td>Stok : </td>
                    <td><input type="text" name="stok"/></td>
                </tr>
                <tr>
                    <td>Harga : </td>
                    <td><input type="text" name="harga"/></td>
                </tr>
                <tr>
                    <td>Supplier : </td>
                    <td>
                        <select name="idsupplier">
                            <% 
                                 List<Supplier> ls = (List<Supplier>)request.getAttribute("idsupplier");
                                  for(Supplier s : ls){  
                             %>
                             <option name="idsupplier" value="<%=s.getIdSupplier()%>"><%=s.getNamasupplier()%></option>
                            <%
                                  }              
                            %>
                        </select>
                    
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="submit" value="save"/>
                </tr>
            </table>
        </form>
    </body>
</html>
