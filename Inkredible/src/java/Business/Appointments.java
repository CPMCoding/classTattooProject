/*
 * This will be our Appointments object for Inkredible. 
 */
package Business;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;




public class Appointments {
    private String apptDT;
    private String custID;
    private String artistID;
    private String tatCost;

    public Appointments(){
        apptDT = "";
        custID = "";
        artistID = "";
        tatCost = "";
    }

    public Appointments(String adt, String cid, String aid, String tcst){
        apptDT = adt;
        custID = cid;
        artistID = aid;
        tatCost = tcst;
    }

    public void setADT(String adt){
        apptDT = adt;
    }

    public String getADT(){
        return apptDT;
    }

    public void setCID(String cid){
        custID = cid;
    }

    public String getCID(){
        return custID;
    }

    public void setAID(String aid){
        artistID = aid;
    }

    public String getAID(){
        return artistID;
    }

    public void setTCST(String tcst){
        tatCost = tcst;
    }

    public String getTCST(){
        return tatCost;
    }

    // end of buisiness objects below will be for database behaviours  
    
    public void selectCustDB(String cID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Appointments where customerID = '" + cID + "'";
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            apptDT = rs.getString(2); 
            custID = rs.getString(4); 
            artistID = rs.getString(1); 
            tatCost = rs.getString(3); 
            
            con.close();
            
            
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    
    
    public void selectArtDB(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Appointments where employeeID = '" + aID + "'";
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            apptDT = rs.getString(2); 
            custID = rs.getString(4); 
            artistID = rs.getString(1); 
            tatCost = rs.getString(3); 
            
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
            String sql = "Update Appointments Set appointmentDateTime = '" + apptDT + "', employeeID = '" + artistID + "', cost = '" + tatCost + "'Where customerID = '" + custID + "'";
            //executeUpdate needs to be used when updating a database executeQuery won't work here. 
            stmt.executeUpdate(sql);
            
            con.close();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void insertDB(String aDT, String aCID, String aAID, String aCost){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Insert into Appointments (appointmentDateTime, customerID, employeeID, cost) values('" + aDT + "', '" + aCID + "', '" + aAID + "', '" + aCost + "')";
            System.out.println(sql);
            //executeUpdate needs to be used when updating a database executeQuery won't work here. 
            stmt.executeUpdate(sql);
            
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    
    public void display(){
        System.out.println("Appointment Date and Time: " + apptDT);
        System.out.println("Appointment Customer ID: " + custID);
        System.out.println("Appointment Artist ID: " + artistID);
        System.out.println("Appointment Cost: " + tatCost);
    }
    
    //Used for testing
    public static void main(String[] args){
        Appointments a1 = new Appointments();
        a1.insertDB("January 2, 2025, 3pm", "A910", "B465", "2000");
        a1.selectCustDB("A910");
        a1.display();
    }
}
