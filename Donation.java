/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author Lapy
 */
@WebServlet(urlPatterns = {"/Donation"})
public class Donation extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

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
        
        
     try
    {
        PrintWriter out = response.getWriter();
        Class.forName("com.mysql.jdbc.Driver");
     //   out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
       // out.println("succ");   
        Statement st=con.createStatement();
        int i=0;
        
    ResultSet rs=st.executeQuery("select max(did) from donarlist");
   //     out.println("succss");   
    
    while(rs.next())
    {
        i=rs.getInt(1)+1;
    }
           String name=request.getParameter("name");
           String contact=request.getParameter("contact");
           String addr=request.getParameter("address");
           String type=request.getParameter("type");
           String img=request.getParameter("img");
           String desc=request.getParameter("desc");
          
               PreparedStatement stmt=con.prepareStatement("insert into donarlist values(?,?,?,?,?,?,?)");
                    
                         stmt.setInt(1, i);
                         stmt.setString(2, name);
                         stmt.setString(3, type);
                         stmt.setString(4, desc);
                         stmt.setString(5, contact);
                         stmt.setString(6, addr);
                         stmt.setString(7, img);
                         
                         int rs1=stmt.executeUpdate();
                         out.println ("<script type=\"text/javascript\">");
	   				out.println("alert('inserted Successfull!!');");
	   				out.println("location='Donationform.jsp'; ");
	   				out.println("</script>");
	              
                         if(rs1>0)
                         {
	   				out.println ("<script type=\"text/javascript\">");
	   				out.println("alert('inserted Successfull!!');");
	   				out.println("location='Donationform.jsp'");
	   				out.println("</script>");

                          }  else 
                           {
                               out.println ("<script type=\"text/javascript\">");
                               out.println("alert('failed!');");
                               out.println("location='Donationform.jsp'; ");
                               out.println("</script>");
                          }
                 
    }
    catch(Exception ex){
        }
   
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
