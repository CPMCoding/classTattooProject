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
        custPass = request.getParameter("pass"); //depends on ID in JSP page, may change from pass
        
        try{
            Customers c1 = new Customers();
            c1.selectDB(custID);
            String pwdb = c1.getCPW();
            
            Appointments a1 = new Appointments();
            a1.selectCustDB(custID);
            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("c1", c1); //Telling the sesion what the attribute is for the customer class
            ses1.setAttribute("a1", a1); //Telling the session what the attribute is for the Appointments class 
            System.out.println("Customer added to session");
            
            if(custPass.equals(pwdb)){
                RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage.jsp"); //Temp name "CustomerHomePage.jsp" may change
                rd.forward(request,response);
            }
            else{
                RequestDispatcher rd = request.getRequestDispatcher("LoginError.jsp"); //Temp name "LoginError.jsp" may change
                rd.forward(request,response);
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
