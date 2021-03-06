/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOProducts;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Products;

/**
 *
 * @author MSI_PRO
 */
@WebServlet(name = "ControllerAdmin", urlPatterns = {"/ControllerAdmin"})
public class ControllerAdmin extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String service = request.getParameter("do");
            DAOProducts dao = new DAOProducts();
            HttpSession session = request.getSession();
            if (session.getAttribute("admin") == null) {
                RequestDispatcher dispath = request.getRequestDispatcher("mylogin.jsp");
                dispath.forward(request, response);
            }
            if (service == null) {
                service.equals("update");
            }
            if (service.equals("update")) {
                String id = request.getParameter("id");
                int pid = Integer.parseInt(id);
//               Vector<Products> pro=dao.SelectbyID(pid);
                ResultSet rs = dao.getData("select * from Products where ProductID=" + pid);
                request.setAttribute("rs", rs);
                RequestDispatcher dispath = request.getRequestDispatcher("updateadmin.jsp");
                dispath.forward(request, response);
            }
            if (service.equals("updateP")) {
                String id = request.getParameter("id");
                String spid = request.getParameter("spid");
                String cid = request.getParameter("cid");
                String name = request.getParameter("name");
                String year = request.getParameter("year");
                String price = request.getParameter("price");
                String imagine = request.getParameter("imagine");
                String description = request.getParameter("description");
                String quantity = request.getParameter("quantity");
                String discontinued = request.getParameter("discontinued");

                int pid = Integer.parseInt(id);
                int supid = Integer.parseInt(spid);
                int ccid = Integer.parseInt(cid);
                int yyear = Integer.parseInt(year);
                float uprice = Float.parseFloat(price);
                int quan = Integer.parseInt(quantity);
                int dis = Integer.parseInt(discontinued);
                Products pro = new Products(pid, supid, ccid, name, yyear, uprice, imagine, description, quan, dis);
                int n = dao.updateProducts(pro);
                ResultSet rs = dao.getData("select * from Products where ProductID=" + pid);
                request.setAttribute("rs", rs);
                RequestDispatcher dispath = request.getRequestDispatcher("updateadmin.jsp");
                dispath.forward(request, response);
            }
            if (service.equals("all")) {
                Vector<Products> vector = dao.listAllProduct("select * from Products");
                request.setAttribute("vector", vector);
                RequestDispatcher dispath = request.getRequestDispatcher("ProductsManager.jsp");
                dispath.forward(request, response);
            }
            if (service.equals("deleteP")) {
                String id = request.getParameter("id");
                int pid = Integer.parseInt(id);
                int n = dao.removeProduct(pid);
                Vector<Products> vector = dao.listAllProduct("select * from Products");
                request.setAttribute("vector", vector);
                RequestDispatcher dispath = request.getRequestDispatcher("ProductsManager.jsp");
                dispath.forward(request, response);
            }if(service.equals("insert")){
                String cid = request.getParameter("cid");
                String name = request.getParameter("name");
                String year = request.getParameter("year");
                String price = request.getParameter("price");
                String imagine = request.getParameter("imagine");
                String description = request.getParameter("description");
                String quantity = request.getParameter("quantity");
                String discontinued = request.getParameter("discontinued");

                int ccid = Integer.parseInt(cid);
                int yyear = Integer.parseInt(year);
                float uprice = Float.parseFloat(price);
                int quan = Integer.parseInt(quantity);
                int dis = Integer.parseInt(discontinued);
                Products pro = new Products(1, ccid, price, yyear, uprice, imagine, description, quan, dis);
                int n=dao.addProduct(pro);
                Vector<Products> vector = dao.listAllProduct("select * from Products");
                request.setAttribute("vector", vector);
                RequestDispatcher dispath = request.getRequestDispatcher("ProductsManager.jsp");
                dispath.forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
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
