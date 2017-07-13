/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BarangDAO;
import DAO.SupplierDAO;
import DAOImpl.BarangDAOImpl;
import DAOImpl.SupplierDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Barang;
import model.Supplier;

/**
 *
 * @author C7
 */
public class ProsesInsertBarangServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              
            String namabarang = request.getParameter("namabarang");
            long idsupplier = Long.parseLong(request.getParameter("idsupplier"));
            int harga = Integer.parseInt(request.getParameter("harga"));
            int stok = Integer.parseInt(request.getParameter("stok"));
            Barang b = new Barang();
            b.setNamabarang(namabarang);
            b.setStok(stok);
            b.setHarga(harga);
            SupplierDAO sdao = new SupplierDAOImpl();
            Supplier s = sdao.getByID(idsupplier);
            BarangDAO bdao = new BarangDAOImpl();
            b.setSUPPLIERidSupplier(s);
            bdao.insert(b);
            //    RequestDispatcher rd = request.getRequestDispatcher("Supplier.jsp");
            //    rd.forward(request, response); //tampilannya supplier, tapi url tetap prosesinsert
            response.sendRedirect("barangservlet"); //url pindah ke supplier
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
