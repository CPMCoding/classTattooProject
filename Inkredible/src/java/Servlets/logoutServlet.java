
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "logoutServlet", urlPatterns = {"/logoutServlet"})
public class logoutServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession ses1 = request.getSession(false); // Get the current session, or null if it doesn't exist
            if (ses1 != null) {
                ses1.invalidate(); // Invalidate the session
                out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
                out.println("<script type='text/javascript'>");// looks like this alery
                out.println("alert('You have been logged out!');");// in this case just an alert with nothing in the body
                out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
                out.println("</script>");//the rest is to just close the remaining html page
                out.println("</body></html>");
                RequestDispatcher rd = request.getRequestDispatcher("/index.html"); //this is where the servlet will send to when the employee signs in correctly. PAGE MAY CHANGE
                rd.forward(request, response);
            }
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
