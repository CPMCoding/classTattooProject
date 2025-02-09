/*
 * This will be our artist object for Inkredible. 
 */
package Business;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Artists {
    private String artID;
    private String artPass;
    private String artFName;
    private String artLName;
    private String artEmail;
    private String artStyle;

    public Artists(){
        artID = "";
        artPass = "";
        artFName = "";
        artLName = "";
        artEmail = "";
        artStyle = "";
    }

    public Artists(String aid, String apw, String afn, String aln, String aem, String asy){
        artID = aid;
        artPass = apw;
        artFName = afn;
        artLName = aln;
        artEmail = aem;
        artStyle = asy;
    }

    public void setAID(String aid){
        artID = aid;
    }

    public String getAID(){
        return artID;
    }

    public void setAPW(String apw){
        artPass = apw;
    }

    public String getAPW(){
        return artPass;
    }

    public void setAFN(String afn){
        artFName= afn;
    }

    public String getAFN(){
        return artFName;
    }

    public void setALN(String aln){
        artLName = aln;
    }

    public String getALN(){
        return artLName;
    }

    public void setAEM(String aem){
        artEmail = aem;
    }

    public String getAEM(){
        return artEmail;
    }
    
    public void setASY(String asy){
        artStyle = asy;
    }

    public String getASY(){
        return artStyle;
    }

    // end of buisiness objects below will be for database behaviours
    
    /*
    This is where we will select the Artist from the customer table in the database 
    */
    public void selectDB(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Artists where employeeID = '" + aID + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            artID = rs.getString(6);
            artPass = rs.getString(5);
            artFName = rs.getString(1);
            artLName = rs.getString(2);
            artEmail = rs.getString(3);
            artStyle = rs.getString(4);
            
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
            String sql = "Update Customers Set password = '" + artPass + "', firstName = '" + artFName + "', lastName = '" + artLName + "', email = '" + artEmail + "', artistStyle = '" + artStyle + "' Where employeeID = '" + artID + "'";
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
        System.out.println("Artist's ID: " + artID);
        System.out.println("Artist's Password: " + artPass);
        System.out.println("Artist's First Name: " + artFName);
        System.out.println("Artist's Last Name: " + artLName);
        System.out.println("Artist's Email: " + artEmail);
        System.out.println("Artist's Style: " + artStyle);
    }
    
    public static void main(String[] args){
        Artists a1 = new Artists();
        a1.selectDB("A320");
        a1.setAFN("Alex");
        a1.setAEM("aj2@gmail.com");
        a1.updateDB();
        a1.display();
        
    }
}
