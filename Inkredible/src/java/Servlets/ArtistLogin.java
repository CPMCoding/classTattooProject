package Servlets;

import Business.Artists;
import Business.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ArtistLogin", urlPatterns = {"/ArtistLogin"})
public class ArtistLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        /*System.out.println("");*/ /* System.out.println sends to the console*/
        
        //as of lab 6
        //step 1 read data from previous html
        try{    
            String id, pw;
            id = request.getParameter("username");
            pw = request.getParameter("password");
            //printing to confirm its reading the info
            System.out.println("ID = " + id);
            System.out.println("Password = " + pw);

            //step 2 get any objects out of session
                //left blank

            //step 3 create any business objects to complete task 
            
            Artists a1 = new Artists();   //creates empty object
            a1.selectDB(id);   //does the DB lookup to find Customer
            a1.getAppointments();
            String pwdb = a1.getAPW();
            String iddb = a1.getAID();
            
            Admin adm1 = new Admin();
            adm1.selectDB(id);
            String adpwdb = adm1.getADPW();
            String adiddb = adm1.getADID();
            
            System.out.println("ADMIN DB READ");

            //step 5 insterted here
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("a1", a1);
            ses1.setAttribute("adm1", adm1);
            System.out.println("Employee added to Session");
            
            

            //step 4 made decisions
            if (pw.equals(pwdb)  && id.equals(iddb)) {
                RequestDispatcher rd = request.getRequestDispatcher("/artistsHomePage.jsp"); //this is where the servlet will send to when the employee signs in correctly. PAGE MAY CHANGE
                rd.forward(request, response); 

            }
            
            else if (pw.equals(adpwdb)  && id.equals(adiddb)) {
                RequestDispatcher rd = request.getRequestDispatcher("/adminHomePage.jsp"); //this is where the servlet will send to when the employee signs in correctly. PAGE MAY CHANGE
                rd.forward(request, response);
            }
            
            else {
                // This works by sending the strings into a responce stream that reads it as normal html code
                out.println("<html><body>"); // making it where if the idexists it will redirectto a webpage that 
                out.println("<script type='text/javascript'>");// looks like this alery
                out.println("alert('Incorrect username or password!');");// in this case just an alert with nothing in the body
                out.println("window.history.back();");//this sends the user back to the previous page when the "ok button is clicked on the alert"
                out.println("</script>");//the rest is to just close the remaining html page
                out.println("</body></html>");

            }//end if else
        } // end of try
        
        catch(Exception e){
            System.out.println(e);
        }
        finally {
            System.out.println("LoginServelet ending....");
            out.close();
        }//end finally
        
        //step 5 put any objects in the session that might be needed by the next servlet or html
        //step 5 is above the if statement
        
        //step 6 use requestDispatcher to forward control to the next html or servlet
        //step 6 is in the decision if else statements
        
    }//end precess request
    
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