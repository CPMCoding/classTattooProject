/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;
import Business.Artists;


public class Schedule {
    
    Artists a1 = new Artists();
    
    private String worksMonday;
    private String worksTuesday;
    private String worksWednesday;
    private String worksThursday;
    private String worksFriday;
    private String worksSaturday;
    private String worksSunday;
    
    
    
    
    public Schedule(String aid, String Mon, String Tues, String Wed, String Thur, String Fri, String Sat, String Sun){
        
        worksMonday = Mon;
        worksTuesday = Tues;
        worksWednesday = Wed;
        worksThursday = Thur;
        worksFriday = Fri;
        worksSaturday = Sat;
        worksSunday = Sun;
        
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
    
    
    // try and have it to where the artist id is pulled from session created when an artist signs in.
    // plan is to have this also check ALL artists in the database for admins by using a true/false check per day per id
    
    
    public void display(){
        System.out.println("Artist's ID: " + a1.getAID());
    }
    
}// end of class
