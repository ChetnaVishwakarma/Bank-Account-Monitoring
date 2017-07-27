package Pack;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Pack.ConnectionProvider;
import java.io.Serializable;
import java.sql.*;

/**
 *
 * @author dashmeetkaur
 */
public class Login implements Serializable{
    private int custId;
    private String pwd;
    
    public Login()
    {   this.pwd = null;
        this.custId=0;
    }
    
    public void setCustId(int custId)
    {
        this.custId=custId;
    }
    public void setPwd(String pwd)
    {
        this.pwd=pwd;
    }
    public int getCustId()
    {
        return this.custId;
    }
    public String getPwd()
    {
        return this.pwd;
    }
    public int loginCheck() throws SQLException
    {
        Connection con=ConnectionProvider.getCon();
        try {
              PreparedStatement ps=con.prepareStatement("Select pwd,accNo from login,account where login.custId=account.custId and account.status='active' and login.custId=?");
              ps.setInt(1,this.getCustId());
              
              ResultSet rs=ps.executeQuery();
             
              if(rs.next())
                {
                    String pwd1=rs.getString("pwd");
                    if(pwd1.equals(this.getPwd()))
                    {
                        int accNo=rs.getInt("accNo");
                        //rs.close();ps.close();
                      //  con.close();
                        return accNo;
                    } 
                    else {            
                      // rs.close();ps.close();
                       // con.close();
                       return -1;
                    }
                }
            else
            { 
                //rs.close();ps.close();
                //con.close();
                return -2;}
                
        } 
        catch (Exception e) {}
       // con.close();
        return 0;
    }
    
}
