package Pack;

  
  
import Pack.ConnectionProvider;
import java.sql.*;  
import java.sql.Date;
  
public class openacc { 


  
public static int acc(int id){  
int status=0;  

try{  
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps=con.prepareStatement("update account set status='active',openDate=?,balance=1000 where custid=?");  
java.util.Date date=new java.util.Date();
  java.sql.Date opendate=new java.sql.Date(date.getTime());
  
  //java.util.Date closedate=new java.util.Date();
  
//ps.setString(1,u.getaccountno());  
//ps.setString(1,u.getcustomerid());  
//ps.setString(2,u.getstatus());  
ps.setDate(1,opendate);  
//ps.setDate(4,new java.sql.Date(closedate.getTime()));  
//ps.setDate(4, u.getclosedate());
//ps.setString(5,type); 
//ps.setInt(6,u.getbalance()); 
ps.setInt(2,id);


status=ps.executeUpdate();


}catch(Exception e){}  
      
return status;  
}  
  
}  


