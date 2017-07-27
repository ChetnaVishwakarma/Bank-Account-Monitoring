package Pack;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author dashmeetkaur
 */
import Pack.ConnectionProvider;
import static Pack.ConnectionProvider.*;
import java.sql.*;
import java.io.Serializable;
import java.util.*;

public class Transfer implements Serializable{
    private int ato,afrom,amount;
    
    public void setAto(int ato)
    {
        this.ato=ato;
    }
    public void setAfrom(int afrom)
    {
        this.afrom=afrom;
    }
    public void setAmount(int amount)
    {
        this.amount=amount;
    }
   public int getAto()
    {
        return ato;
    }
   public int getAfrom()
    {
        return afrom;
    }
    public int getAmount()
    {
        return amount;
    }
    
    int transferMoney1() throws SQLException
    {
      int status,status1,status2;
      status=status1=status2=0;
      Connection con=ConnectionProvider.getCon();
      try{
         // con.setAutoCommit(false);
          PreparedStatement ps=con.prepareStatement("insert into transfer values(?,?,?,?)");
          PreparedStatement ps1=con.prepareStatement("update account set balance=balance-? where accNo=?");
          PreparedStatement ps2=con.prepareStatement("update account set balance=balance+? where accNo=?");
          
          java.util.Date transferdate=new java.util.Date();
          java.sql.Date td=new java.sql.Date(transferdate.getTime());
          ps.setInt(1,this.getAfrom());
          ps.setInt(2,this.getAto());
          ps.setInt(3,this.getAmount());
          ps.setDate(4,td);
          
          ps1.setInt(1,this.getAmount());
          ps1.setInt(2,this.getAfrom());
          
          ps2.setInt(1,this.getAmount());
          ps2.setInt(2,this.getAto());
          
          status=ps.executeUpdate();
          status1=ps1.executeUpdate();
          status2=ps2.executeUpdate();
          //con.commit();
          ps.close();
          ps1.close();
          ps2.close();
          boolean result=(status>0 && status1>0 && status2>0); 
           if(result)
           {//con.close(); 
               return 1;}
           else
            {//con.rollback();
                return 0;}
      }catch(Exception e){//con.rollback();}
      }
      //con.close();
     return 0; 
    }
    
   boolean checkAto() throws SQLException
    { 
        con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("Select accNo from account where accNo=? and status='active'");
        ps.setInt(1,this.getAto());
        ResultSet rs=ps.executeQuery();
        boolean find=rs.next();
        rs.next();
        ps.close();
        return find; 
    }
    
    boolean enoughBalance() throws SQLException
    {
        con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("Select balance from account where accNo=?");
        ps.setInt(1,this.getAfrom());
        ResultSet rs=ps.executeQuery();
        rs.next();
        int bal=rs.getInt("balance");
        rs.close();
        ps.close();
        if(this.getAmount()<bal)
            return true;
        else
            return false;
    }
    public int transferMoney() throws SQLException
    {
        con=ConnectionProvider.getCon();
        if((this.checkAto())==false)
          {
            return 2;
          }
        else if((this.enoughBalance())==false)
          {
            return 3;
          }
        else
            return transferMoney1();
        
    }
    
 }
