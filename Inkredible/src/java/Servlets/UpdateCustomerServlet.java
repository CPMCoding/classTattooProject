package Servlets;

import Business.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UpdateCustomerServlet", urlPatterns = {"/UpdateCustomerServlet"})
public class UpdateCustomerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {        // THESE GET PARAMETERS WILL NEED TO CHANGE WHEN UPDATE JSP IS MADE
            
            // this should pull the customer id from the session instead of the customer inputing it to change their info
            HttpSession ses1;
            ses1 = request.getSession();  // creating session 
            Customers c1 = (Customers) ses1.getAttribute("c1");
            String ucid = c1.getCID();
            
            String ucpw = request.getParameter("dptb");
            String ucfn = request.getParameter("dftb");
            String ucln = request.getParameter("dltb");
            String ucem = request.getParameter("detb");

            System.out.println("id: " + ucid);
            System.out.println("pw: " + ucpw);
            System.out.println("fn: " + ucfn);
            System.out.println("ln: " + ucln) ;
            System.out.println("em: " + ucem);

            


            Customers updatedCustomer = new Customers();
            updatedCustomer.selectDB(ucid);
            // Code to update the customer in the database
    //        updatedPatient.setPID(upid);  THIS IS TO ALLOW CUSTOMERS TO CHANGE THEIR ID. WHICH IS GENERALLY BAD
            updatedCustomer.setCPW(ucpw);
            updatedCustomer.setCFN(ucfn);
            updatedCustomer.setCLN(ucln);
            updatedCustomer.setCEM(ucem);
            updatedCustomer.updateDB();

            // THE REDIRECTS WILL NEED TO CHANGE BASED ON THE JSPS MADE
            out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
            out.println("<script type='text/javascript'>");// looks like this alery
            out.println("alert('Your information has been updated!');");// in this case just an alert with nothing in the body
            out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
            out.println("</script>");//the rest is to just close the remaining html page
            out.println("</body></html>"); 
//            response.sendRedirect("customerAccountDetails.jsp");
        } //end of try
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("UpdateCustomerServlet ending...");
            out.close();
        }//end finally

    }// end process req

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
