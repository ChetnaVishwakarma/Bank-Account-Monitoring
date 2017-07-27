package Pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
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
  
public class adupdation { 
    
  
public static int upd(int id){  
int status=0;  


try{
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps1=con.prepareStatement("select * from customern where customerId=?");
PreparedStatement ps=con.prepareStatement("update customer set fname=?,lname=?,address=?,phoneno=?,email=? where customerId=?");  

ps1.setInt(1,id);
ResultSet rs1=ps1.executeQuery();
rs1.next();

ps.setString(1,rs1.getString("fname"));  
ps.setString(2,rs1.getString("lname"));  
ps.setString(3,rs1.getString("address"));  
ps.setString(4,rs1.getString("phoneno"));  
ps.setString(5,rs1.getString("email"));  
ps.setInt(6,id); 


status=ps.executeUpdate();

}catch(Exception e){}
return status;
}  
  
}  


