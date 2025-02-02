//CPMARTIN tattoo Project

package businessObjects;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;




public class Artists{
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









}


