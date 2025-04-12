
package Servlets;

import Business.Artists;
import Business.Appointments;
import Business.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "artistUpdateCost", urlPatterns = {"/artistUpdateCost"})
public class artistUpdateCost extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Appointments updateCostAppointment = new Appointments();
        
        try {
//            String nacid = request.getParameter("naCID");
            String uaadt = request.getParameter("uaADT");
//            String naaid = request.getParameter("naAID");
            
            updateCostAppointment.selectADTDB(uaadt);
               
            String uacst = request.getParameter("uaCST");
//            System.out.println("cid: " + nacid);
            System.out.println("adt:  " + uaadt);
//            System.out.println("aid: " + naaid);
            System.out.println("cst: " + uacst);


            
                           
//            newAppointment.setCID(nacid);
                updateCostAppointment.setADT(uaadt);
//            newAppointment.setAID(naaid);
                updateCostAppointment.setTCST(uacst);
                updateCostAppointment.updateDBArt();
                
                System.out.println("New info: ");
//                System.out.println("cid: " + nacid);
                System.out.println("adt:  " + uaadt);
//              System.out.println("aid: " + naaid);
                System.out.println("cst: " + uacst);

            response.sendRedirect("artists.jsp"); 

        } //end of try
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("Create appointment Servlet ending...");
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
