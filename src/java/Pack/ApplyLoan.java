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
import java.io.Serializable;
import java.sql.*;

public class ApplyLoan implements Serializable {
    int amount,timeperiod;        
    String type,status;
    
   public ApplyLoan()
    {
        status="not granted";
    }
    public void setAmount(int amount)
    {
        this.amount=amount;
    }
    public int getAmount()
    {
        return amount;
    }
    public void setTimeperiod(int timeperiod)
    {
        this.timeperiod=timeperiod;
    }
   public int getTimePeriod()
    {
        return timeperiod;
    }
    public String getStatus()
    {
        return status;
    }
    public void setType(String type)
    {
        this.type=type;
    }
    public String getType()
    {
        return type;
    }
    
    public int applyLoan(int actno) throws SQLException
    {
        PreparedStatement ps=null;
        try{
            Connection con=ConnectionProvider.getCon();
            //con1.setAutoCommit(false);
            ps=con.prepareStatement("Insert into loan(accountNo,dateRequested,amount,status,type,timePeriod) values(?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            //String sqlq="Insert into loan(accountNo,dateRequested,amount,status,type,timePeriod) values(?,?,?,?,?,?)";
            java.util.Date td=new java.util.Date();
            java.sql.Date dr=new java.sql.Date(td.getTime());
            ps.setInt(1,actno);
            ps.setDate(2,dr);
            ps.setInt(3,this.getAmount());
            ps.setString(4,this.getStatus());
            ps.setString(5,this.getType());
            ps.setInt(6,this.getTimePeriod());
            int success=ps.executeUpdate();
            if(success>0)
                {
                    //con1.commit();
                    ResultSet rs=ps.getGeneratedKeys();
                    rs.next();
                    return rs.getInt(1);
                }
            else
                return 0;
            
        //con1.close();
        }
        catch(Exception e)
        {//con1.rollback();}
        }
        return -1;
  
    }
}

