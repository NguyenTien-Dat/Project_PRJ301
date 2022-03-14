/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOProducts;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ProductCart;

/**
 *
 * @author MSI_PRO
 */
@WebServlet(name = "ControllerCart", urlPatterns = {"/ControllerCart"})
public class ControllerCart extends HttpServlet {

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
            HttpSession session = request.getSession();
            String service = request.getParameter("do");
            DAOProducts dao = new DAOProducts();
            if (service == null) {
                service ="showCart";
            }
            if(service.equals("showCart")){
                String key = request.getParameter("id");
                int id = Integer.parseInt(key);
                ProductCart pro = dao.CartbyID(id);
                if (session.getAttribute(key) == null) {
                    pro.setQuantity(1);
                    session.setAttribute(key, pro);
                } else {
                    pro = (ProductCart) session.getAttribute(key);
                    pro.setQuantity(pro.getQuantity() + 1);
                    session.setAttribute(key, pro);
                }
//                double total = 0;
//                java.util.Enumeration em = session.getAttributeNames();
//                while (em.hasMoreElements()) {
//                    key = em.nextElement().toString();
//                    if (key != "account") {
//                        pro = (ProductCart) session.getAttribute(key);
//                    }
//                    total += pro.getQuantity() * pro.getUnitPrice();
//                }
//                request.setAttribute("total", total);
//                RequestDispatcher dispath = request.getRequestDispatcher("index.jsp");
//                dispath.forward(request, response);
                    response.sendRedirect("ControllerProducts");
            }if(service.equals("checkout")){
                session.invalidate();
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
