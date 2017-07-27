package Pack;



import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User {  
private String fname,lname,address,phoneno,email,password;  
 private String type,reason;
 String status="inactive";
 int customerid,accountno;
 Integer balance=0;
 
 Date opendate=new Date();
 
 java.sql.Date closedate;
 
 Date date;
 
 String descrp;
 
 String bdate;
 java.sql.Date bdate1;
 
 
public String getfname() {  
    return fname;  
}  
  
public void setfname(String fname) {  
    this.fname = fname;  
}  
  
public String getlname() {  
    return lname;  
}  
  
public void setlname(String lname) {  
    this.lname = lname;  
}  
  
public String getaddress() {  
    return address;  
}  
  
public void setaddress(String address) {  
    this.address = address;  
}  
 
public String getphoneno() {  
    return phoneno;  
}  
  
public void setphoneno(String phoneno) {  
    this.phoneno = phoneno;  
}  

public String getemail() {  
    return email;  
}  
  
public void setemail(String email) {  
    this.email = email;  
}  

public java.sql.Date getbdate() {
    return bdate1;  
}  
  
public void setbdate(String bdate) {  
    try{
        SimpleDateFormat date1=new SimpleDateFormat("yyyy-mm-dd");
        java.util.Date dt=date1.parse(bdate);
        java.sql.Date td=new java.sql.Date(dt.getTime());
        this.bdate1 = td;  
    }
    catch(Exception e){
        System.out.println(e);
    }
       
    
}  

public String getpassword() {  
    return password;  
}  
  
public void setpassword(String password) {  
    this.password = password;  
}  

public int getcustomerid() {  
    return customerid;  
}  
  
public void setcustomerid(int customerid) {  
    this.customerid = customerid;  
}  

public int getaccountno() {  
    return accountno;  
}  
  
public void setaccountno(int accountno) {  
    this.accountno = accountno;  
}  
public String getstatus() {
   
    return status;  
}  
  
public void setstatus(String status) {
    
    this.status = status;  
}  
public String gettype() {  
    return type;  
}  
  
public void settype(String type) {  
    this.type = type;  
}  
public Integer getbalance() { 
   
    return balance;  
}  
  
public void setbalance(Integer balance) { 
    
    this.balance = balance;  
}  
public Date getopendate() { 
   
    return opendate;  
}  
  
public void setopendate(Date opendate) { 
        
   
   this.opendate = opendate;  
}  
public java.sql.Date getclosedate() {  
    return closedate;  
}  
  
public void setclosedate(String closedate1) {  
    
    try{
        SimpleDateFormat date=new SimpleDateFormat("yyyy-mm-dd");
        java.util.Date dt=null;
        dt=date.parse(closedate1);
        java.sql.Date td=new java.sql.Date(dt.getTime());

        
        this.closedate = td;  
    }
    catch(Exception e){
        System.out.println(e);
    }
    
}  


public String getdescrp() {  
    return descrp;  
}  
  
public void setdescrp(String descrp) {  
    this.descrp = descrp;  
}  

public String getreason() {  
    return fname;  
}  
  
public void setreason(String reason) {  
    this.reason = reason;  
}  
}  
