/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conseiller.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dylan
 */
@WebServlet(name = "LoginConseiller", urlPatterns = {"/LoginConseiller"})
public class LoginConseiller extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginConseiller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginConseiller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("LoginConseiller.jsp").forward(request, response);  //se connecte a la page jsp loginconseiller
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
        processRequest(request, response); //a retirer une fois erreure réparer
   /*             String log= request.getParameter("login");
                String mdp = request.getParameter("mdp");
        
        try{
            User u = UserDao.getByLoginAndPassword(log,mdp);  //on doit rajouter le user.Dao et user.model
            if (u!= null){
                HttpSession session = request.getSession();
                session.setAttribute(("userConnect"), u);
                response.sendRedirect("PageConseiller");
            } else{
                request.setAttribute("msg","Identifiant ou mot de passe incorrecte");
                request.getRequestDispatcher("LoginConseiller.jsp").forward(request, response);
            }
        } catch (Exception e){
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }
    }*/
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
