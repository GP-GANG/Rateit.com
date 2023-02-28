                                                                                                                                                                                                                                                                                                                                                
package rateit.servlets;

import dbclasses.Customer_database;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import rateit.entities.Customer;
import rateit.helper.ConnectionProvider;

public class LogIn extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
           
            String username = request.getParameter("name");
            String password = request.getParameter("password");
            
            Customer_database customer = new Customer_database(ConnectionProvider.getConnection());
           
             Customer obj = customer.getCustomerByEmail(username, password);
             
             if(obj == null){
             out.println("Incorrect password or username");
             }
             else{
             
                 HttpSession session = request.getSession();
                 
                 session.setAttribute("Customer", obj);
                 response.sendRedirect("index.jsp");
             }
             
             
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
