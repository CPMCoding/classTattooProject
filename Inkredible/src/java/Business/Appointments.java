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
}
