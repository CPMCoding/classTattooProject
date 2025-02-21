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

@WebServlet(name = "UpdateArtistServlet", urlPatterns = {"/UpdateArtistServlet"})
public class UpdateArtistServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {        // THESE GET PARAMETERS WILL NEED TO CHANGE WHEN UPDATE JSP IS MADE
        String uaid = request.getParameter("datb");
        String uapw = request.getParameter("dptb");
        String uafn = request.getParameter("dftb");
        String ualn = request.getParameter("dltb");
        String uaem = request.getParameter("detb");
        String uasy = request.getParameter("dastb");
        
        System.out.println("id: " + uaid);
        System.out.println("pw: " + uapw);
        System.out.println("fn: " + uafn);
        System.out.println("ln: " + ualn) ;
        System.out.println("em: " + uaem);
        System.out.println("sy: " + uasy);
        
        HttpSession ses1;
        
        
        Artists updatedArtist = new Artists();
        updatedArtist.selectDB(uaid);
        // Code to update the customer in the database
//        updatedPatient.setPID(upid);  THIS IS TO ALLOW ARTISTS TO CHANGE THEIR ID. WHICH IS GENERALLY BAD
        updatedArtist.setAPW(uapw);
        updatedArtist.setAFN(uafn);
        updatedArtist.setALN(ualn);
        updatedArtist.setAEM(uaem);
        updatedArtist.setASY(uasy);
        updatedArtist.updateDB();
        
        // THE REDIRECTS WILL NEED TO CHANGE BASED ON THE JSPS MADE
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
