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
    public AppointmentList aList = new AppointmentList();

    public Artists(){
        artID = "";
        artPass = "";
        artFName = "";
        artLName = "";
        artEmail = "";
        artStyle = "";
    }
    
    public Artists(String aid){
        artID = aid;
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
    This is where we will select the Artist from the artist table in the database 
    */
    public void selectDB(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
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
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Update Artists Set password = '" + artPass + "', firstName = '" + artFName + "', lastName = '" + artLName + "', email = '" + artEmail + "', artistStyle = '" + artStyle + "' Where employeeID = '" + artID + "'";
            System.out.println(sql);
            //executeUpdate needs to be used when updating a database executeQuery won't work here. 
            stmt.executeUpdate(sql);
            
            con.close();
            
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void insertDB(String aid, String apw, String afn, String aln, String aem, String asy){
        setAID(aid);
        setAPW(apw);
        setAFN(afn);
        setALN(aln);
        setAEM(aem);
        setASY(asy);
        
        
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Insert into Artists values('" + getAID() + "'," + "'" + getAPW() + "'," + "'" + getAFN() + "'," + "'" + getALN() +  "'," + "'" + getAEM() + "'," + "'" + getASY() + "')"; 
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
    
    public void display(){
        System.out.println("Artist's ID: " + artID);
        System.out.println("Artist's Password: " + artPass);
        System.out.println("Artist's First Name: " + artFName);
        System.out.println("Artist's Last Name: " + artLName);
        System.out.println("Artist's Email: " + artEmail);
        System.out.println("Artist's Style: " + artStyle);
    }
    
    public boolean checkID(String aID) {
        boolean idExists = false; 
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");

            Statement stmt = con.createStatement();

            // SQL query to check if a artist exists with the provided aID
            String sql = "SELECT COUNT(*) FROM Artists WHERE employeeID = '" + aID + "'";

            // Execute the query and get the result
            ResultSet rs = stmt.executeQuery(sql);

            // if the record is found sets count to 1
            if (rs.next() && rs.getInt(1) > 0) {
                idExists = true;  // sets exists to true and stops the admin from inserting into DB
            }

            // Close the connection
            con.close();
        } 
        catch (Exception e) {
            System.out.println(e);
        }
    
        return idExists;  // return true if the aID exists, false otherwise
    }
    
    public void selectAllDB() {
        ArrayList<Artists> artists = new ArrayList<>();
        try {
            // Load the database driver (UCanAccess for MS Access)
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

            // Provide the correct path to your database file in getConnection() below
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");

            // Create a statement to execute the SQL query
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Artists";
            System.out.println(sql); // This will print the query you're executing

            // Execute the query and get the result set
            ResultSet rs = stmt.executeQuery(sql);

            // Loop through the result set and store each row into the ArrayList
            while (rs.next()) {
                // Assuming columns are: 1 = First Name, 2 = Last Name, 6 = Artist ID
                String artID = rs.getString(6);

                // Create a new Artist object and add it to the ArrayList
                Artists artist = new Artists(artID);
                artists.add(artist);
            }

            // Optionally, print out all the artists
            for (Artists artist : artists) {
                System.out.println("Artist ID: " + artist.artID);
            }

            // Close the connection
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void getAppointments(){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Appointments WHERE employeeID = '" + artID + "'";
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
    
    
    //Being used for Artist Homepage
    public void display1(){
        System.out.println("Artist's ID: " + artID);
        System.out.println("Artist's Password: " + artPass);
        System.out.println("Artist's First Name: " + artFName);
        System.out.println("Artist's Last Name: " + artLName);
        System.out.println("Artist's Email: " + artEmail);
        System.out.println("Artist's Style: " + artStyle);
        System.out.println("=====================================");
        
        aList.displayList();
    }
    
    
    //Used for testing
    public static void main(String[] args){
//        Artists a1 = new Artists();
//        a1.selectDB("A320");
//        a1.setAFN("Alex");
//        a1.setAEM("aj2@gmail.com");
//        a1.updateDB();
//        a1.display();

//        Artists a2 = new Artists();
//        a2.selectAllDB();
        
    }
}
