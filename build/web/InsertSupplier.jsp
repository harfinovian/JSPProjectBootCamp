<%-- 
    Document   : InsertSupplier
    Created on : Jul 12, 2017, 10:41:28 AM
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
        <form method="POST" action="prosesinsertsupplier">
            <table>
                <tr>
                    <td>Kode Supplier : </td>
                    <td><input type="text" name="kodesupplier"/></td>
                </tr>
                <tr>
                    <td>Nama Supplier : </td>
                    <td><input type="text" name="namasupplier"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="submit" value="save"/>
                </tr>
            </table>
        </form>
    </body>
</html>
