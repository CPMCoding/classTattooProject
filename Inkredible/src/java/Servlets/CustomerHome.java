/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;
import Business.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tston
 */
@WebServlet(name = "CustomerHome", urlPatterns = {"/CustomerHome"})
public class CustomerHome extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String cID, cPass, cFirst, cLast, cEmail;
        String aCID, aTime;
        
        cID = request.getParameter("");
        cPass = request.getParameter("");
        cFirst = request.getParameter("");
        cLast = request.getParameter("");
        cEmail = request.getParameter("");
        System.out.println(cID);
        
        
        aCID = request.getParameter("");
        aTime = request.getParameter("");
        System.out.println(aCID);
        
        try{
            Customers c1 = new Customers();
            c1.selectDB(cID);
            c1.setCPW(cPass);
            c1.setCFN(cFirst);
            c1.setCLN(cLast);
            c1.setCEM(cEmail);
            c1.updateDB();
            
            Appointments a1 = new Appointments();
            a1.selectCustDB(aCID);
            a1.setADT(aTime);
            a1.updateDB();
            
            //RequestDispatcher rd = request.getRequestDispatcher("ChangeSuccess.jsp");
            //rd.forward(request, response);
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
