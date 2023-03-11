
import dbclasses.Company_database;
import dbclasses.Company_services_database;
import dbclasses.Poll_database;
import dbclasses.Review_database;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import rateit.entities.Company;
import rateit.entities.Company_services;
import rateit.entities.Customer;
import rateit.entities.Poll;
import rateit.entities.Review;
import rateit.helper.ConnectionProvider;

public class SubReview extends HttpServlet {

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

            String review1 = request.getParameter("review1");
            String review2 = request.getParameter("review2");

            Poll_database pd = new Poll_database(ConnectionProvider.getConnection());
            Poll p = pd.getPoll(POLL_ID);
            Company_database cd = new Company_database(ConnectionProvider.getConnection());
            Company cmp1 = cd.getCompanyByName(p.getCOMPANY1());
            Company cmp2 = cd.getCompanyByName(p.getCOMPANY2());
            HttpSession session = request.getSession(false);
            Customer customer = (Customer) session.getAttribute("Customer");
            Review_database rd = new Review_database(ConnectionProvider.getConnection());
            Company_services_database csd = new Company_services_database(ConnectionProvider.getConnection());
            ArrayList<Company_services> list1 = csd.getAllCategories(cmp1.getCOMPANY_ID());

            
            
             int[] ratings = new int[10];
            int i = 1;
            while (i < 10 && (request.getParameter("c" + i) != null)) {
                ratings[i] = Integer.parseInt(request.getParameter("c" + i));
                i++;
            }
            int ii = 1;
            int l;
            for (l = 0; (list1.size())>= l; ii++,l++) {
                Company_services e = list1.get(l);
                if (ii == 1) {
                    Review r = new Review(p.getPOLL_ID(), cmp1.getCOMPANY_ID(), customer.getUSER_ID(), e.getCOMPANY_SERVICES(), review1, ratings[ii]);
                    if(rd.submitReview(r)){
                        out.println("one senu che");}
                }
                else{
                Review r = new Review(p.getPOLL_ID(), cmp1.getCOMPANY_ID(), customer.getUSER_ID(), e.getCOMPANY_SERVICES(), ratings[ii]);
                if(rd.submitReview(r)){
                        out.println("done");}
                }
            }

//            for(Company_services e : list1){
//                
//                if(f){
//            Review r = new Review(p.getPOLL_ID(),cmp1.getCOMPANY_ID(),customer.getUSER_ID(),e.getCOMPANY_SERVICES(),review1,ratings[1]);
//              f =false;
//                }
//                
//            }
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
