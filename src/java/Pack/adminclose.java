package Pack;

  
  
import Pack.ConnectionProvider;
import java.sql.*;  
  
public class adminclose { 
    
 
  
public static int cloacc(int id){  

int status=0;
try{  
Connection con=ConnectionProvider.getCon();  


//String qr1="update account set  where customerid=?";

PreparedStatement pqr=con.prepareStatement("update account set closeDate=?,status=? where custId=?");
//PreparedStatement p=con.prepareStatement(qr1);
java.util.Date dt=new java.util.Date();
java.sql.Date td=new java.sql.Date(dt.getTime());
pqr.setDate(1,td);
pqr.setString(2,"inactive");
pqr.setInt(3,id);
//p.setString(1, u.getcustomerid());
status=pqr.executeUpdate();
//s=p.executeUpdate();
//ResultSet rs=pqr.executeQuery();
//ResultSet r=p.executeQuery();



}catch(Exception e){}  
      
return status;  
}  
  
}  


