/*
 * The servlet we will use when a Customer wants to login. 
 */
package Servlets;
import Business.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tston
 */
@WebServlet(name = "CustomerLogin", urlPatterns = {"/CustomerLogin"})
public class CustomerLogin extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String custID, custPass;
        custID = request.getParameter("cID"); //depends on ID in JSP page, may change from cID
        System.out.println("This woulld be the customer ID: " + custID);
        custPass = request.getParameter("pass"); //depends on ID in JSP page, may change from pass
        System.out.println("This would be the customer Password: " + custPass);
        
        try{
            Customers c1 = new Customers(); //creates the customer object
            c1.selectDB(custID); //Selects the account info from database with the user input ID which was grabbed earlier 
            c1.getAppointments();
            AppointmentList available = Customers.getAvailableAppointments();
            String pwdb = c1.getCPW(); //Gets the password of the user
            String iddb = c1.getCID(); // gets the ID of the user
            
            Appointments a1 = new Appointments(); // creates the appointmetn object 
            a1.selectCustDB(custID);  //selects the appointment based on customer ID
            
            HttpSession ses1;
            ses1 = request.getSession();  // creating session 
            ses1.setAttribute("c1", c1); //Telling the sesion what the attribute is for the customer class
            ses1.setAttribute("a1", a1); //Telling the session what the attribute is for the Appointments class 
            ses1.setAttribute("availableAppts", available);
            System.out.println("Customer added to session");
            
            if(custPass.equals(pwdb) && custID.equals(iddb)){  // verifying login info which includes ID and password 
                System.out.println("Hello1");
                RequestDispatcher rd = request.getRequestDispatcher("customerHomePage.jsp"); //Temp name "CustomerHomePage.jsp" may change
                rd.forward(request,response);
                System.out.println("Hello2");
            }
            else{
                // This works by sending the strings into a responce stream that reads it as normal html code
                out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
                out.println("<script type='text/javascript'>");// looks like this alery
                out.println("alert('Incorrect username or password!');");// in this case just an alert with nothing in the body
                out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
                out.println("</script>");//the rest is to just close the remaining html page
                out.println("</body></html>"); 
            }
            
        }
        catch(Exception e){
            System.out.println(e);
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
