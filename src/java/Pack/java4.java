package Pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
  
  
import Pack.ConnectionProvider;
import java.sql.*;  
  
public class java4 { 
    
  public static String res1,res2,res3,res4,res5,res6,res7,rescom;

  
public static String projava(User u){  


try{  
Connection con=ConnectionProvider.getCon();  

int status=0;
String qr="select * from customer1";
PreparedStatement pqr=con.prepareStatement(qr);
//pqr.setString(1, u.getemail());
ResultSet rs=pqr.executeQuery();
while(rs.next()){
    res1=rs.getString("customerid");
res2=rs.getString("fname");
res3=rs.getString("lname");
res4=rs.getString("address");
res5=rs.getString("phoneno");
res6=rs.getString("email");
res7=rs.getString("bdate");

rescom="Customer Id:"+res1+"\n"+"First Name :"+res2+"\n"+"Last Name :"+res3+"\n"+"Address :"+res4+"\n"+"Phone no :"+res5+"\n"+"Email Id:"+res6+"\n"+"Birth Date :"+res7;


}


}catch(Exception e){}  
      
return rescom;  
}  
  
}  



