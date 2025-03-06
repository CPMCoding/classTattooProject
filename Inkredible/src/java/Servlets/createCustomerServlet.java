
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
        String ncid = request.getParameter("datb");
        String ncpw = request.getParameter("dptb");
        String ncfn = request.getParameter("dftb");
        String ncln = request.getParameter("dltb");
        String ncem = request.getParameter("detb");
        
        System.out.println("id: " + ncid);
        System.out.println("pw:  " + ncpw);
        System.out.println("fn: " + ncfn);
        System.out.println("ln: " + ncln);
        System.out.println("em: " + ncem);
        
        HttpSession ses1;
        
        
        Customers newCustomer = new Customers();
//        newCustomer.setCID(ncid);
        // Code to update the patient in the database
//        updatedPatient.setPID(upid);
        newCustomer.setCPW(ncpw);
        newCustomer.setCFN(ncfn);
        newCustomer.setCLN(ncln);
        newCustomer.setCEM(ncem);
        newCustomer.insertDB(ncpw, ncfn, ncln, ncem);
        
        response.sendRedirect("customerEditAccount.jsp");
        } //end of try
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("UpdatePatientServlet ending...");
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
