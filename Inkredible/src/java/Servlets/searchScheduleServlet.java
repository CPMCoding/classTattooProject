
package Servlets;

import Business.Schedule;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchArtist")
public class searchScheduleServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String aID = request.getParameter("uaID");

        // Call method to search for the employee by username
        Schedule searchSchedule = new Schedule();

        if (searchSchedule != null) {
            request.setAttribute("usID", searchSchedule.getSArtID());
            request.setAttribute("usMON", searchSchedule.getMON());
            request.setAttribute("usTUES", searchSchedule.getTUES());
            request.setAttribute("usWED", searchSchedule.getWED());
            request.setAttribute("usTHUR", searchSchedule.getTHUR());
            request.setAttribute("usFRI", searchSchedule.getFRI());
            request.setAttribute("usSAT", searchSchedule.getSAT());
            request.setAttribute("usSUN", searchSchedule.getSUN());

            request.getRequestDispatcher("/adminHomePage.jsp").forward(request, response);
        } else {
            response.getWriter().write("Employee not found!");
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
