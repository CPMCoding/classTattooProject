
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

@WebServlet(name = "createCustomerServlet", urlPatterns = {"/createCustomerServlet"})
public class createCustomerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
        String ncid = request.getParameter("ncID");
        String ncpw = request.getParameter("ncPW");
        String ncfn = request.getParameter("ncFN");
        String ncln = request.getParameter("ncLN");
        String ncem = request.getParameter("ncEM");
        
        System.out.println("id: " + ncid);
        System.out.println("pw:  " + ncpw);
        System.out.println("fn: " + ncfn);
        System.out.println("ln: " + ncln);
        System.out.println("em: " + ncem);
        
        HttpSession ses1;
        
        ///////       make it to where the customer creates a id and submits it, have it be checked against the ids in the database and if it comes back TRUE then make it to where the customer DOES NOT create the account. If it comes back FALSE let it go through
        Customers newCustomer = new Customers();
        boolean idExists = newCustomer.checkID(ncid);

        if (idExists) {
            response.sendRedirect("customerIDExists.jsp"); // this will be the warning that the id aleady exists and they need to make a new one
        } 
        else {
            newCustomer.setCID(ncid);
            newCustomer.setCPW(ncpw);
            newCustomer.setCFN(ncfn);
            newCustomer.setCLN(ncln);
            newCustomer.setCEM(ncem);
            newCustomer.insertDB(ncid, ncem, ncpw, ncfn, ncln);

            response.sendRedirect("customerHomePage.jsp");
        }
        } //end of try
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("ID check Servlet ending...");
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
