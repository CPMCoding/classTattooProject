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
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/Inkredible/TattooProject.accdb");
            
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
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://TattooProject.accdb");
            
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
    
   //Used for testing
    public static void main(String[]args){
        Customers c1 = new Customers();
        c1.selectDB("A900");
        c1.setCFN("Andy");
        c1.setCLN("Jones");
        c1.updateDB();
        c1.display();
    }
}
