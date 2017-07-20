<%-- 
    Document   : addinvitation
    Created on : Oct 17, 2016, 2:25:02 AM
    Author     : Lapy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Invitation| Charity / Non-profit</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootsrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Template main Css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Modernizr -->
        <script src="assets/js/modernizr-2.6.2.min.js"></script>


    </head>
    <body>
    <!-- NAVBAR================================================== -->

    <header class="main-header">
        
    
        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-6 col-xs-12">

                        <ul class="list-unstyled list-inline header-contact">
                            <li> <i class="fa fa-phone"></i> <a href="tel:">+91-8796445459 </a> </li>
                             <li> <i class="fa fa-envelope"></i> <a href="mailto:contact@happynesscare.org">happynesscare@gmail.com</a> </li>
                       </ul> <!-- /.header-contact  -->
                      
                    </div>

                    <div class="col-sm-6 col-xs-12 text-right">

                        <ul class="list-unstyled list-inline header-social">

                            <li> <a href="#" target="_blank"> <i class="fa fa-facebook"></i> </a> </li>
                            <li> <a href="#" target="_blank"> <i class="fa fa-twitter"></i>  </a> </li>
                            <li> <a href="#" target="_blank"> <i class="fa fa-google"></i>  </a> </li>
                            <li> <a href="#" target="_blank"> <i class="fa fa-youtube"></i>  </a> </li>
                            <li> <a href="#" target="_blank"> <i class="fa fa fa-pinterest-p"></i>  </a> </li>
                       </ul> <!-- /.header-social  -->
                      
                    </div>


                  </div>
              </div>

            </div>

            <div class="navbar-main">
              
              <div class="container">

                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                  </button>
                  
                  <a class="navbar-brand" href="index.html"><img src="assets/images/" alt=""></a>
                  
                </div>

                <div id="navbar" class="navbar-collapse collapse pull-right">

                  <ul class="nav navbar-nav">

                    <li><a href=""></a></li>
                    <li><a class="is-active"  href="about.html">ABOUT US</a></li>
                   <!-- <li class="has-child"><a href="#">CAUSES</a>

                      <ul class="submenu">
                         <li class="submenu-item"><a href="causes.html">Causes list </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                      </ul>

                    </li>-->
                    <li><a href="gallery.html">GALLERY</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                      <li><a href="index.html">LOGOUT</a></li>
                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

    </header> <!-- /. main-header -->

    <form class="form-donation" method="get"  action="">

                        <h3 class="title-style-1 text-center">Happyness Care Welcome's all
                            <span class="title-under"></span>  </h3>
                        <h4 align="center"> Act Of Kindness
                        <h4 align='center'> Together we can improve their lives</h4>
                        <table align="center">
                            <tr><td>
                                    Event Name:<td><input type="text" name="ename" placeholder="Event name" required></td></td></tr>
                        
                            <tr><td>
                                <br> Date:<td><br><input type="text" name="date" placeholder="DD-MM-YY" required></td>
                        <td>
                        <br>Time:<td><br><input type="text" name="time" placeholder="hh:mm:ss" required></td></td></tr>
                        <tr><td>
                            <br>  Address:<td><br><textarea  name="addr" placeholder="Address" required></textarea></td></td></tr>
                        
                        <tr><td>
                            <br> Additional Details:<td><br><textarea  name="detail" required placeholder="Name & Contact no. of Event Manager"></textarea></td></td></tr>

                        <tr><td>
                            <br><td><br><input type="submit" value="Submit"></td>
<td><br><input type="reset" value="Clear"></td></td></tr>

                    
<button type="submit" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated"  value="Submit">
    
    
    </form>
  </div>
 
  
  <%
  
     try
    {
        
        Class.forName("com.mysql.jdbc.Driver");
       // out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
    Statement st=con.createStatement();
    int i=0;
    ResultSet rs=st.executeQuery("select max(id) from invitation");
    while(rs.next())
    {
        i=rs.getInt(1)+1;
    }
    
    String name=request.getParameter("ename");
       String date=request.getParameter("date");
          String time=request.getParameter("time");
             String addr=request.getParameter("addr");
                String detail=request.getParameter("detail");
                   
                PreparedStatement stmt=con.prepareStatement("insert into invitation values(?,?,?,?,?,?)");
                    
                   stmt.setInt(1, i);
                   stmt.setString(2, name);
                         stmt.setString(3, date);
                         stmt.setString(4, time);
                         stmt.setString(5, addr);
                         stmt.setString(6, detail);
                              stmt.executeUpdate();
                          //    out.println("inserted");
                             // response.sendRedirect("");
                   
                   
    }catch(Exception e)
    {
        out.println("Error in" +e);
    }
 
  %>
  
</html>