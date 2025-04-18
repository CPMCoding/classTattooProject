/***
 *   This will be our customer object for Inkcredible. 
 * 
 */

package Business;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Customers {

    private String custID;
    private String custPass;
    private String custFName;
    private String custLName;
    private String custEmail;
    public AppointmentList aList = new AppointmentList();

    public Customers(){
        custID = "";
        custPass = "";
        custFName = "";
        custLName = "";
        custEmail = "";
    }

    public Customers(String cid, String cpw, String cfn, String cln, String cem){
        custID = cid;
        custPass = cpw;
        custFName = cfn;
        custLName = cln;
        custEmail = cem;
    }

    public void setCID(String cid){
        custID = cid;
    }

    public String getCID(){
        return custID;
    }

    public void setCPW(String cpw){
        custPass = cpw;
    }

    public String getCPW(){
        return custPass;
    }

    public void setCFN(String cfn){
        custFName= cfn;
    }

    public String getCFN(){
        return custFName;
    }

    public void setCLN(String cln){
        custLName = cln;
    }

    public String getCLN(){
        return custLName;
    }

    public void setCEM(String cem){
        custEmail = cem;
    }

    public String getCEM(){
        return custEmail;
    }
    

    // end of buisiness objects below will be for database behaviours
    
    
    /*
    This is where we will select the customer from the customer table in the database 
    */
    public void selectDB(String cID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Customers where customerID = '" + cID + "'";
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            custID = rs.getString(4);
            custPass = rs.getString(5);
            custFName = rs.getString(1);
            custLName = rs.getString(2);
            custEmail = rs.getString(3);
            
            con.close();
            
            
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    
    public void updateDB(){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Update Customers Set password = '" + custPass + "', firstName = '" + custFName + "', lastName = '" + custLName + "', email = '" + custEmail + "' Where customerID = '" + custID + "'";
            //executeUpdate needs to be used when updating a database executeQuery won't work here. 
            stmt.executeUpdate(sql);
            
            con.close();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void getAppointments(){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Appointments WHERE customerID = '" + custID + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                Appointments a = new Appointments();
                
                a.setADT(rs.getString(2));
                a.setCID(rs.getString(4));
                a.setAID(rs.getString(1));
                a.setTCST(rs.getString(3));
                
                aList.addAppointment(a);
            }
            
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public static AppointmentList getAvailableAppointments() {
        AppointmentList availableList = new AppointmentList();
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * FROM Appointments WHERE customerID IS NULL OR customerID = ''";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                Appointments appt = new Appointments();
                appt.setADT(rs.getString(2));
                appt.setCID(rs.getString(4));
                appt.setAID(rs.getString(1));
                appt.setTCST(rs.getString(3));
                
                availableList.addAppointment(appt);
            }
            
            con.close();
            
        } catch (Exception e){
            System.out.println(e);
        }
        
        return availableList;
    }
    
    public void insertDB(String cid, String cpw, String cfn, String cln, String cem){
        
        setCPW(cpw);
        setCFN(cfn);
        setCLN(cln);
        setCEM(cem);
        
        String newCustID;
        
        
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();   
           
            String sql = "Insert into Customers values('" + getCLN() + "'," + "'" + getCEM() + "'," + "'" + getCPW() + "'," + "'" + getCID() +  "'," + "'" + getCFN() + "')"; 
            System.out.println(sql);
            int n1 = stmt.executeUpdate(sql);
            if (n1==1){
                System.out.println("INSERT Successful!!!");
            }
            else {
                System.out.println("INSERT FAILED !!!!!!!!!!!!!!!!!!!");
            }
            con.close();
        }//end try
        catch(Exception e){
            System.out.print(e);
        }
    }
    /*
    Displaying Customer data from DB
    */
    public void display(){
        System.out.println("Customer's ID: " + custID);
        System.out.println("Customer's Password: " + custPass);
        System.out.println("Customer's First Name: " + custFName);
        System.out.println("Customer's Last Name: " + custLName);
        System.out.println("Customer's Email: " + custEmail);
    }
    
    public boolean checkID(String cID) {
        boolean idExists = false;
        try {
            // Load the database driver
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");

            // Create a statement to execute the query
            Statement stmt = con.createStatement();

            // SQL query to check if a customer exists with the provided cID
            String sql = "SELECT COUNT(*) FROM Customers WHERE customerID = '" + cID + "'";

            // Execute the query and get the result
            ResultSet rs = stmt.executeQuery(sql);

            // if the record is found sets count to 1
            if (rs.next() && rs.getInt(1) > 0) {
                idExists = true;  // sets exists to true and stops the customer from inserting into DB
            }

            // Close the connection
            con.close();
        } 
        catch (Exception e) {
            System.out.println(e);
        }
    
        return idExists;  // Return true if the customer ID exists, false otherwise
    }
    
    
    
   //Used for testing
    public static void main(String[]args){
        // update test
//        Customers c1 = new Customers();
//        c1.selectDB("A900");
//        c1.setCFN("Andy");
//        c1.setCLN("Jones");
//        c1.updateDB();
//        c1.display();
    
        //insert and auto id allocation test
        Customers c2 = new Customers();
        c2.insertDB("A665", "5555", "chris", "Martin", "c@scho");
        c2.display();
    }
    
}
