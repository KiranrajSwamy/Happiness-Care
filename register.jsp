<%-- 
    Document   : register
    Created on : Oct 9, 2016, 3:00:44 PM
    Author     : Lapy
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
    {
        
        Class.forName("com.mysql.jdbc.Driver");
        out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
    Statement st=con.createStatement();
    int i=0;
    ResultSet rs=st.executeQuery("select max(id) from registration");
    while(rs.next())
    {
        i=rs.getInt(1)+1;
    }
    
    String name=request.getParameter("c2");
       String email=request.getParameter("c1");
          String contact=request.getParameter("c3");
             String addr=request.getParameter("c4");
                String gender=request.getParameter("c5");
                   String pass=request.getParameter("password");
                 
                   PreparedStatement stmt=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
                    
                   stmt.setInt(1, i);
                   stmt.setString(2, name);
                         stmt.setString(3, email);
                         stmt.setString(4, contact);
                         stmt.setString(5, addr);
                         stmt.setString(6, gender);
                               stmt.setString(7, pass);
                               
                              stmt.executeUpdate();
                              response.sendRedirect("login1.html");
                   
                   
    }catch(Exception e)
    {
        out.println("Error in" +e);
    }
    
    %>