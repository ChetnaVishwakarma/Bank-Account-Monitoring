package Pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
  
  
import Pack.ConnectionProvider;
import java.sql.*;  
  
public class seeclose { 
    
  public static String res,res1,res2;
  
public static String seeclosereq(User u){  


try{  
Connection con=ConnectionProvider.getCon();  

int status=0;
String qr="select * from close";
PreparedStatement pqr=con.prepareStatement(qr);
//pqr.setString(1, u.getemail());
ResultSet rs=pqr.executeQuery();
while(rs.next()){
    res1=rs.getString("customerid");
res2=rs.getString("reason");

res="Customer Id:"+res1+"\n"+"Reason: "+res2;
}


}catch(Exception e){}  
      
return res;  
}  
  
}  


