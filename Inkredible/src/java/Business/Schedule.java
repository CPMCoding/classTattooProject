/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;
import Business.Artists;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Schedule {
    
    Artists a1 = new Artists();
    
    private String schArtID;
    private String worksMonday;
    private String worksTuesday;
    private String worksWednesday;
    private String worksThursday;
    private String worksFriday;
    private String worksSaturday;
    private String worksSunday;
    
    public Schedule(){
        
        schArtID = "";
        worksMonday = "";
        worksTuesday = "";
        worksWednesday = "";
        worksThursday = "";
        worksFriday = "";
        worksSaturday = "";
        worksSunday = "";
        
    }
    
    public Schedule(String aid){
        schArtID = aid;
    }
    
    public Schedule(String aid, String Mon, String Tues, String Wed, String Thur, String Fri, String Sat, String Sun){
        
        schArtID = aid;
        worksMonday = Mon;
        worksTuesday = Tues;
        worksWednesday = Wed;
        worksThursday = Thur;
        worksFriday = Fri;
        worksSaturday = Sat;
        worksSunday = Sun;
        
    }
    
    public String getSArtID(){
        return schArtID;
    }
    
    public void setMON(String Mon){
        worksMonday = Mon;
    }

    public String getMON(){
        return worksMonday;
    }
    
    public void setTUES(String Tues){
        worksTuesday = Tues;
    }

    public String getTUES(){
        return worksTuesday;
    }
    
    public void setWED(String Wed){
        worksWednesday = Wed;
    }

    public String getWED(){
        return worksWednesday;
    }
    
    public void setTHUR(String Thur){
        worksThursday = Thur;
    }

    public String getTHUR(){
        return worksThursday;
    }
    
    public void setFRI(String Fri){
        worksFriday = Fri;
    }

    public String getFRI(){
        return worksFriday;
    }
    
    public void setSAT(String Sat){
        worksSaturday = Sat;
    }

    public String getSAT(){
        return worksSaturday;
    }
    
    public void setSUN(String Sun){
        worksSunday = Sun;
    }

    public String getSUN(){
        return worksSunday;
    }
    
    
    // this one should check based on if an artist is logging in and pulling the aid from the a1 session
    public void selectDB(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Schedule where EmployeeID = '" + aID + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            schArtID = rs.getString(8);
            worksMonday = rs.getString(1);
            worksTuesday = rs.getString(2);
            worksWednesday = rs.getString(3);
            worksThursday = rs.getString(4);
            worksFriday = rs.getString(5);
            worksSaturday = rs.getString(6);
            worksSunday = rs.getString(7);
            
            System.out.println("Schedule selectDB completed");
            con.close();
            
            
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    
    public void selectDBAdmin(String aID){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Schedule where employeeID = '" + aID + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            rs.next();
            schArtID = rs.getString(8);
            worksMonday = rs.getString(1);
            worksTuesday = rs.getString(2);
            worksWednesday = rs.getString(3);
            worksThursday = rs.getString(4);
            worksFriday = rs.getString(5);
            worksSaturday = rs.getString(6);
            worksSunday = rs.getString(7);
            
            con.close();
            
            
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    
    public void selectAllDB(){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Select * from Schedule";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                
                schArtID = rs.getString(8);
                worksMonday = (rs.getString(1) == null) ? "" : rs.getString(1); // this checks if the cell in the databse is empty. if it is it will set the sting as "". 
                worksTuesday = (rs.getString(2) == null) ? "" : rs.getString(2);// If it shows an "x" in the cell the string will be "x" like normal
                worksWednesday = (rs.getString(3) == null) ? "" : rs.getString(3);// if kept as just rs.getString if the cell is empty the system will print null. ? is shorthand ifelse
                worksThursday = (rs.getString(4) == null) ? "" : rs.getString(4);
                worksFriday = (rs.getString(5) == null) ? "" : rs.getString(5);
                worksSaturday = (rs.getString(6) == null) ? "" : rs.getString(6);
                worksSunday = (rs.getString(7) == null) ? "" : rs.getString(7);
                
                System.out.println("Artist: " + schArtID);
                System.out.println("Monday: " + worksMonday);
                System.out.println("Tuesday: " + worksTuesday);
                System.out.println("Wednesday: " + worksWednesday);
                System.out.println("Thursday: " + worksThursday);
                System.out.println("Friday: " + worksFriday);
                System.out.println("Saturday: " + worksSaturday);
                System.out.println("Sunday: " + worksSunday);
                System.out.println();
                
                
                
            }
            con.close();
            
            
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    
    // THIS WILL MOST LIKELY NEED TO BE FIXED TO WHERE IT WORKS BY LOOKING FOR A SINGLE ARTIST ON THE ADMINHOMEPAGE.
    public void updateDB(){
        try{
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //If you have issues connecting the DB, change the file location here. It should work as long as you keep the DB Inkcredibles folder. KEEP IN MAIN DIRECTORY //
            Connection con = DriverManager.getConnection("jdbc:ucanaccess://C:/GitHub/Class Project/classTattooProject/TattooProject.accdb");
            
            Statement stmt = con.createStatement();
            String sql = "Update Schedule Set Monday = '" + worksMonday + "', Tuesday = '" + worksTuesday + "', Wednesday = '" + worksWednesday + "', Thursday = '" + worksThursday + "', Friday = '" + worksFriday + "', Saturday = '" + worksSaturday + "', Sunday = '" + worksSunday + "' Where employeeID = '" + schArtID + "'";
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
        System.out.println("Artist: " + a1.getAID());
        System.out.println("Monday: " + worksMonday);
        System.out.println("Tuesday: " + worksTuesday);
        System.out.println("Wednesday: " + worksWednesday);
        System.out.println("Thursday: " + worksThursday);
        System.out.println("Friday: " + worksFriday);
        System.out.println("Saturday: " + worksSaturday);
        System.out.println("Sunday: " + worksSunday);
        
    }
    
//    public void displayAll(){
//        System.out.println("Artist: " + schArtID);
//        System.out.println("Monday: " + worksMonday);
//        System.out.println("Tuesday: " + worksTuesday);
//        System.out.println("Wednesday: " + worksWednesday);
//        System.out.println("Thursday: " + worksThursday);
//        System.out.println("Friday: " + worksFriday);
//        System.out.println("Saturday: " + worksSaturday);
//        System.out.println("Sunday: " + worksSunday);
//        
//    }
    
    public static void main(String[] args) {
        Schedule s1 = new Schedule();
        s1.selectAllDB();
//        s1.displayAll();
    }
    
    
    
}// end of class
