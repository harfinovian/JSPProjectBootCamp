<%@page import="DAO.SupplierDAO"%>
<%@page import="DAOImpl.SupplierDAOImpl"%>
<%@page import="model.Supplier"%>
<% 
    String kodesupplier = request.getParameter("kodesupplier");
    String namasupplier = request.getParameter("namasupplier");
    Supplier s = new Supplier();
    s.setKodesupplier(kodesupplier);
    s.setNamasupplier(namasupplier);
    SupplierDAO sdao = new SupplierDAOImpl();
    sdao.insert(s);
//    RequestDispatcher rd = request.getRequestDispatcher("Supplier.jsp");
//    rd.forward(request, response); //tampilannya supplier, tapi url tetap prosesinsert
    response.sendRedirect("Supplier.jsp"); //url pindah ke supplier
%>