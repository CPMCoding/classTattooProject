
package Servlets;

import Business.Artists;
import Business.Schedule;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "updateSchedule", urlPatterns = {"/updateSchedule"})
public class updateSchedule extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String usID = request.getParameter("usID");
            String usMON = request.getParameter("usMON");
            String usTUES = request.getParameter("usTUES");
            String usWED = request.getParameter("usWED");
            String usTHUR = request.getParameter("usTHUR");
            String usFRI = request.getParameter("usFRI");
            String usSAT = request.getParameter("usSAT");
            String usSUN = request.getParameter("usSUN");

            System.out.println("id: " + usID);
            System.out.println("mon: " + usMON);
            System.out.println("tues: " + usTUES);
            System.out.println("wed: " + usWED) ;
            System.out.println("thur: " + usTHUR);
            System.out.println("fri: " + usFRI);
            System.out.println("sat: " + usSAT);
            System.out.println("sun: " + usSUN);

            HttpSession ses1;


            Schedule updatedSchedule = new Schedule();
            updatedSchedule.selectDB(usID);
            updatedSchedule.setMON(usMON);
            updatedSchedule.setTUES(usTUES);
            updatedSchedule.setWED(usWED);
            updatedSchedule.setTHUR(usTHUR);
            updatedSchedule.setFRI(usFRI);
            updatedSchedule.setSAT(usSAT);
            updatedSchedule.setSUN(usSUN);
            updatedSchedule.updateDB();
            
            
        }
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("UpdatePatientServlet ending...");
            out.close();
        }//end finally
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
