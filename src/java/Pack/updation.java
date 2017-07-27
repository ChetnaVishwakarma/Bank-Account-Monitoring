package Pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
  
  
import Pack.ConnectionProvider;
import java.sql.*;  
  
public class updation { 
    
public static String s1;
  
public static int upd(User u,int id){  
int status=0;  

PreparedStatement ps;
try{
Connection con=ConnectionProvider.getCon();  
ps=con.prepareStatement("insert into customern (customerId,fname,lname,address,phoneno,email) values(?,?,?,?,?,?)");  

ps.setInt(1,id); 
ps.setString(2,u.getfname());  
ps.setString(3,u.getlname());  
ps.setString(4,u.getaddress());  
ps.setString(5,u.getphoneno());  
ps.setString(6,u.getemail());  



status=ps.executeUpdate();

}catch(Exception e){}
return status;
}  
  
}  

