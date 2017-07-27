package Pack;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Pack.ConnectionProvider;
//import ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dashmeetkaur
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            //out.print("hello");
            /* TODO output your page here. You may use following sample code. */
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
           // out.println("<link type=/"text/css/" rel=/"stylesheet/" href=/"transfersty.css/"/>");
            out.println("<html>");
            out.println("<body>");
            out.println("<background-image='6.jpg'>");
           Connection con=ConnectionProvider.getCon();
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String address=request.getParameter("address");
            String phoneno=request.getParameter("phoneno");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String type=request.getParameter("type");
            
            PreparedStatement ps=con.prepareStatement("insert into customer(fname,lname,address,phoneno,email) values(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setString(3,address);
            ps.setString(4,phoneno);
            ps.setString(5,email);
            int s=ps.executeUpdate();
            if(s>0)
            {   ResultSet rs=ps.getGeneratedKeys();
                rs.next();
                int id=rs.getInt(1);
                PreparedStatement ps1=con.prepareStatement("insert into login values(?,?)");
                ps1.setString(2,password);
                ps1.setInt(1,id);
                PreparedStatement ps2=con.prepareStatement("insert into account(custId,status,type) values(?,?,?)");
                ps2.setInt(1,id);
                ps2.setString(2,"inactive");
                ps2.setString(3,type);
                ps1.executeUpdate();
                ps2.executeUpdate();
                out.print("<center>");
                out.print("Your customer id: "+id);
                out.print("<br/><br/><a href='home.jsp'>Home</a>");
                out.print("</center>");
                out.println("</body>");
                out.println("</html>");
            }
        }catch(Exception e)
        {
            e.printStackTrace(out);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
