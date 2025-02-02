//CPMARTIN tattoo Project

package businessObjects;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;




public class Customers{
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









}