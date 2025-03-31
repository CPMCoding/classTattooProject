/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;
import Business.*;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "FilterAppointments", urlPatterns = {"/FilterAppointments"})
public class FilterAppointments extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String selectedCID = request.getParameter("CustomerID");
        try{
            HttpSession ses1 = request.getSession();
            Artists a1 = (Artists) ses1.getAttribute("a1"); //getting session from ArtistHomePage JSP so you have the Artist object from the login

            AppointmentList filteredList = new AppointmentList(); //Making new Appointment list object called "filterList"
            Appointments[] appointment = a1.aList.accArr;  //Pulls the appointment info per artist info from login

            Appointments aP1;

            for(int i = 0; i < a1.aList.count; i++){ //Looping through each appointment per artist info from login
                aP1 = appointment[i];
                if(aP1.getCID().equals(selectedCID)){  //checking to see if the appointment CID matches the selected ID
                    filteredList.addAppointment(aP1);  //adding the matching appointments to the filtered list 
                }
            }

            ses1.setAttribute("fl", filteredList); //stores filtered list back in session
            ses1.setAttribute("sCID", selectedCID); // stroes selected CID back  in sesion

            //Doing a redirect for now
            RequestDispatcher rd = request.getRequestDispatcher("/filteredAppointments.jsp");
            rd.forward(request,response);
            
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
