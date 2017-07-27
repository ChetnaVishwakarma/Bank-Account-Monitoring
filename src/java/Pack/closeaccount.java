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
import java.io.*;
import java.util.*;

  
public class closeaccount { 
    
public static int close1(int id,String reason){
int status=0;

try{
Connection con=ConnectionProvider.getCon();  


PreparedStatement ps=con.prepareStatement("insert into close(customerid,reason) values (?,?)");


ps.setInt(1,id);  
ps.setString(2,reason);  



status=ps.executeUpdate();

      

}catch(Exception e){}
return status;
}  
  
}  

