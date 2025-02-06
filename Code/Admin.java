//CPMARTIN tattoo Project

package businessObjects;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;




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









}
