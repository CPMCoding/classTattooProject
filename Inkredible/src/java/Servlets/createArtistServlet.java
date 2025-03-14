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
            // If the customer ID already exists, notify the user and stop the process
            response.sendRedirect("artistIDExists.jsp"); // this will be the warning that the id aleady exists and they need to make a new one
        } 
        else {
            newArtist.setAID(naid);
            newArtist.setAPW(napw);
            newArtist.setAFN(nafn);
            newArtist.setALN(naln);
            newArtist.setAEM(naem);
            newArtist.setASY(nasy);
            newArtist.insertDB(naid, napw, nafn, naln, naem, nasy);

            response.sendRedirect("artistHomePage.jsp");
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