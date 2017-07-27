package Pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
  
  
import Pack.ConnectionProvider;
import java.sql.*;  
  
public class check { 
    
public static String res1,res2,res3,res4,res5,res6,res7,rescom;


  
public static String cdetails(User u){  
try{  
Connection con=ConnectionProvider.getCon();  
//String qr1="select fname,lname,address,phoneno,email,bdate from customer where customerid=?";
String qr1="select * from customer";
PreparedStatement ps1=con.prepareStatement(qr1);  

//ps1.setInt(1,Integer.parseInt(u.getcustomerid()));
//ps1.setString(1, u.getcustomerid());

ResultSet rs=ps1.executeQuery();
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
//rescom=u.getcustomerid();

}catch(Exception e){}  
      
 return rescom;

}  
  
}  

