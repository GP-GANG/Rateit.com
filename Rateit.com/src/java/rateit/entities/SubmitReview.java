/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package rateit.entities;

import dbclasses.Company_database;
import dbclasses.Poll_database;
import dbclasses.Review_database;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import rateit.helper.ConnectionProvider;

/**
 *
 * @author Dell
 */
public class SubmitReview extends HttpServlet {

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
            out.println("<title>Servlet SubmitReview</title>");
            out.println("</head>");
            out.println("<body>");
     /*-----------------------fetchig parameters from poll review page --------------------*/
            int POLL_ID = Integer.parseInt(request.getParameter("POLL_ID"));
            //int ratings1 = Integer.parseInt(request.getParameter("1"));
            //int ratings2 = Integer.parseInt(request.getParameter("11"));
            String review1 = request.getParameter("review1");
            String review2 = request.getParameter("review2");
            
            int[] ratings1= new int[10];
            int i=1;
            while(ratings1[i] != 0){
            
                 ratings1[i] = Integer.parseInt(request.getParameter(Integer.toString(i)));
                i++;
            }
            
            out.println(ratings1[0]);
            out.println(ratings1[1]);
            out.println(ratings1[2]);
            
            Poll_database pd = new Poll_database(ConnectionProvider.getConnection());
            Poll p= pd.getPoll(POLL_ID);
            Company_database cd = new Company_database(ConnectionProvider.getConnection());
            Company cmp1 = cd.getCompanyByName(p.getCOMPANY1());
            Company cmp2 = cd.getCompanyByName(p.getCOMPANY2());
            HttpSession session = request.getSession(false);
            Customer customer = (Customer)session.getAttribute("Customer");
            
            Review_database rd = new Review_database(ConnectionProvider.getConnection());
            
            
            
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
