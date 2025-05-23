package Servlets;

import Business.Artists;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "createArtistServlet", urlPatterns = {"/createArtistServlet"})
public class createArtistServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
        String naid = request.getParameter("naID");
        String napw = request.getParameter("naPW");
        String nafn = request.getParameter("naFN");
        String naln = request.getParameter("naLN");
        String naem = request.getParameter("naEM");
        String nasy = request.getParameter("naSY");
        
        System.out.println("id: " + naid);
        System.out.println("pw:  " + napw);
        System.out.println("fn: " + nafn);
        System.out.println("ln: " + naln);
        System.out.println("em: " + naem);
        System.out.println("sy: " + nasy);
        
        HttpSession ses1;
        
        
        Artists newArtist = new Artists();
        boolean idExists = newArtist.checkID(naid);
        
        if (idExists) {
            // This works by sending the strings into a responce stream that reads it as normal html code
            out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
            out.println("<script type='text/javascript'>");// looks like this alery
            out.println("alert('Username is already taken!');");// in this case just an alert with nothing in the body
            out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
            out.println("</script>");//the rest is to just close the remaining html page
            out.println("</body></html>"); 
        } 
        else {
            newArtist.setAID(naid);
            newArtist.setAPW(napw);
            newArtist.setAFN(nafn);
            newArtist.setALN(naln);
            newArtist.setAEM(naem);
            newArtist.setASY(nasy);
            newArtist.insertDB(naid, napw, nafn, naln, naem, nasy);

            // This works by sending the strings into a responce stream that reads it as normal html code
            out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
            out.println("<script type='text/javascript'>");// looks like this alery
            out.println("alert('NEW ARTIST CREATED!');");// in this case just an alert with nothing in the body
            out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
            out.println("</script>");//the rest is to just close the remaining html page
            out.println("</body></html>"); 
        }
        } //end of try
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("ID check servlet ending...");
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