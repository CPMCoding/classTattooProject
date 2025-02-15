package Business;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *This will be out Admin object.
 */
public class Admin{
    private String adminID;
    private String adminPass;
    private String adminFName;
    private String adminLName;
    private String adminEmail;

    public Admin(){
        adminID = "";
        adminPass = "";
        adminFName = "";
        adminLName = "";
        adminEmail = "";
    }

    public Admin(String adid, String adpw, String adfn, String adln, String adem){
        adminID = adid;
        adminPass = adpw;
        adminFName = adfn;
        adminLName = adln;
        adminEmail = adem;
    }

    public void setADID(String adid){
        adminID = adid;
    }

    public String getADID(){
        return adminID;
    }

    public void setADPW(String adpw){
        adminPass = adpw;
    }

    public String getADPW(){
        return adminPass;
    }

    public void setADFN(String adfn){
        adminFName= adfn;
    }

    public String getADFN(){
        return adminFName;
    }

    public void setADLN(String aln){
        adminLName = aln;
    }

    public String getADLN(){
        return adminLName;
    }

    public void setADEM(String adem){
        adminEmail = adem;
    }

    public String getADEM(){
        return adminEmail;
    }
    

    // end of buisiness objects below will be for database behaviours
    
    /*
    This is where we will select the Artist from the customer table in the database 
    */
    public void selectDB(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Admin where ID = '" + aID + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            adminID = rs.getString(1); 
            adminPass = rs.getString(5);
            adminFName = rs.getString(2); 
            adminLName = rs.getString(3); 
            adminEmail = rs.getString(4);
            
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
            String sql = "Update Admin Set password = '" + adminPass + "', firstName = '" + adminFName + "', lastName = '" + adminLName + "', email = '" + adminEmail + "' Where ID = '" + adminID + "'";
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
        System.out.println("Admin ID: " + adminID);
        System.out.println("Admin Password: " + adminPass);
        System.out.println("Admin First Name: " + adminFName);
        System.out.println("Admin Last Name: " + adminLName);
        System.out.println("Admin Email: " + adminEmail);
    }
    
    //Used for testing
    public static void main(String[] args){
        Admin a1 = new Admin();
        a1.selectDB("ADMIN1");
        a1.setADFN("Ron");
        a1.setADLN("Enz");
        a1.updateDB();
        a1.display();
        
    }
}
