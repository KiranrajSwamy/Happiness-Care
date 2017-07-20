<%-- 
    Document   : loginjsp
    Created on : Oct 9, 2016, 2:42:57 PM
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
    String email=request.getParameter("email id");
    String pass=request.getParameter("password");
     String utype=request.getParameter("utype");
 //     out.println("##########################################");
    if(utype.equals("orgnization"))
    {
    if((email.equals("happynesscare@gmail.com")) && (pass.equals("happynesscare")))
    {
        response.sendRedirect("donation.html");
    }
    else
    {
        out.println("Please enter correct email id and password......");
    }
    } 
   
    else
    {
       Statement st=con.createStatement();
   
   
    ResultSet rs=st.executeQuery("select * from registration");
    while(rs.next())
    {
       String s=rs.getString(3);
       String s1=rs.getString(7);
       
    
    
    
    
        
        
            if((email.equals(s)) && (pass.equals(s1)))
    {
                
        response.sendRedirect("donatedthingslist.jsp");
    }
    else
    {
        out.println("Please enter correct email id and password......");
    }
    }
        
            
        }
    }
    catch(Exception e)
    {
        out.println("Error in" +e);
    }
    %>