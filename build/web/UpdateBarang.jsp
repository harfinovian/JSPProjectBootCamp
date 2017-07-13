<%-- 
    Document   : UpdateBarang
    Created on : Jul 12, 2017, 10:43:17 AM
    Author     : C7
--%>

<%@page import="java.util.List"%>
<%@page import="model.Barang"%>
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
        <% 
            //Barang b = (Barang)request.getAttribute("barang");
       %>
        <form method="POST" action="prosesupdatebarangservlet">
            <table>
                <tr>
                    <td>ID Barang</td>
                    <td><input type="text" name="id_barang" value="${barang.id}" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Nama Barang</td>
                    <td><input type="text" name="namabarang" value="${barang.namabarang}"/></td>
                </tr>
                <tr>
                    <td>Harga : </td>
                    <td><input type="text" name="harga"value="${barang.harga}"/></td>
                </tr>
                <tr>
                    <td>Stok : </td>
                    <td><input type="text" name="stok"value="${barang.stok}"/></td>
                </tr>
                <tr>
                    <td>Supplier : </td>
                    <td>
                        <select name="idsupplier">
                            <% 
                                 //List<Supplier> ls = (List<Supplier>)request.getAttribute("supplier");
                                  //for(Supplier s : ls){  
                             //if(s.getIdSupplier() == b.getSUPPLIERidSupplier().getIdSupplier()){
                             %>
                             <c:forEach items="${supplier}" var="suppliers">
                             <c:if test="${suppliers.idSupplier} == ${barang.sUPPLIERidSupplier.idSupplier}">
                                 <%--<%=s.getIdSupplier()%><%=s.getNamasupplier()%>--%>
                             <option value="${suppliers.idSupplier}" selected>${suppliers.namaSupplier}</option>
                             </c:if>
                            <%
                                  //}else{
                             %>
                             
                             <option value="${suppliers.idSupplier}" selected>${suppliers.namaSupplier}</option>
                            <%
                            //}}              
                            %>
                             </c:forEach>
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
