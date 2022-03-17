/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOCustomers;
import DAL.DAOEmployees;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customers;
import model.Employees;

/**
 *
 * @author MSI_PRO
 */
@WebServlet(name = "ControllerAccount", urlPatterns = {"/ControllerAccount"})
public class ControllerAccount extends HttpServlet {

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
            HttpSession session = request.getSession();
            String service = request.getParameter("do");
            DAOCustomers dao = new DAOCustomers();
            DAOEmployees daoe= new DAOEmployees();
            Customers cus = new Customers();
            Employees emp= new Employees();
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            cus = dao.getAccount(user, pass);
            emp=daoe.loginE(user, pass);
            if (service == null) {
                if (cus != null) {
                    session.setAttribute("account", cus);
                    response.sendRedirect("ControllerProducts");
                }if(emp!=null){
                    session.setAttribute("admin", emp);
//                    response.sendRedirect("ControllerProducts");
                    RequestDispatcher dispath=request.getRequestDispatcher("index.jsp");
                            dispath.forward(request, response);
                }
                else {
                    String name="Please try again!!!";
                    request.setAttribute("err", name);
                    RequestDispatcher dispath=request.getRequestDispatcher("mylogin.jsp");
                            dispath.forward(request, response);
                }
            }if (service.equals("logout")) {
                session.invalidate();
                response.sendRedirect("ControllerProducts");
            }
        } catch(Exception ex) {
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
