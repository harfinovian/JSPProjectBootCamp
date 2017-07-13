<%-- 
    Document   : index
    Created on : Jul 12, 2017, 9:34:44 AM
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
        <form method="POST" action="test.jsp">
            <table>
                <tr>
                    <td>
                        Nama :
                    </td>
                    <td>
                        <input type="text" name="nama"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Alamat : 
                    </td>

                    <td>
                        <textarea name="alamat"></textarea>
                    </td>   
                </tr>
                <tr>
                    <td>
                        Gender : 
                    </td>

                    <td>
                        <input type="radio" value ="laki-laki" name="gender"/> Laki-laki <input type="radio" value ="perempuan" name="gender"/> Perempuan
                    </td>   
                </tr>
                <tr>
                    <td>
                        Agama :
                    </td>

                    <td>
                        <select name="cbagama">
                            <option value="Buddha">Buddha</option>
                            <option value="Hindu">Hindu</option>
                            <option value="Islam">Islam</option>
                            <option value="Katolik">Katolik</option>
                            <option value="Kristen">Kristen</option>
                            <option value="Konghucu">Konghucu</option>  
                        </select>
                    </td>   
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="save" name="submit"/>
                    </td>
                </tr>
            </table>
        </form>
        <a href="newjsp.jsp"> halaman baru </a>
         
         
                                    
        
    </body>
</html>
