<%-- 
    Document   : donatedthingslist
    Created on : Oct 13, 2016, 9:19:46 PM
    Author     : Lapy
--%>
<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Donation List | Charity / Non-profit</title>
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
    <!-- NAVBAR
    ================================================== -->

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

                    <li><a href=></a></li>
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


	<div class="page-heading text-center">

		<div class="container zoomIn animated">
			
                    <a href="Donationform.jsp">	<h1 class="page-title">Donate <span class="title-under"></span></h1></a>
			<p class="page-description">
                  <h2 class="carousel-title bounceInDown animated slow">Because they need your help</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow ">Do not let them down</h4>

			</p>
			
		</div>

	</div>

<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
				
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>donation things</title>
        <table width="30%"  align="center">
 			
            
                <tr>
                <form method="get" action="http://localhost:16858/happyness/donatedthingslist.jsp">
                    <center> <td><h4>Search:<select name="search">
                          <option>Select</option>
                           <option value="3">Education</option>
                            <option value="1">Furniture</option>
                            <option value="2">Clothes</option>
                            <option value="4">Other</option>
                                    </select>
                                <button type="submit" value="GO" name="go">GO</button></td></td></center>
                 </form>
    </head>
    <body>
           <table border="1" align="center">
			<table class="table table-style-1">
					      <thead>
					        <tr>
					          <th>#</th>
					          <th>Item Type</th>
					          <th>Item Name</th>
					        </tr>
					      </thead>
	
               
    </body>
<% 
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        //out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
            // out.println("succ");   
        Statement st=con.createStatement();

           String search=request.getParameter("search");
//           out.println(search);
           
       ResultSet rs=st.executeQuery("select * from thingslist2 where itemid="+search);
   
       while(rs.next())
    {
      String name=rs.getString(3);
      String type=rs.getString(2);
        
     out.println("<tbody> <tr> <th scope='row'></th><td>");
     out.println(type);
     out.println("</td><td>");
     out.println(name);
     out.println("</td> </tr>");
			
      
    }
        
   }
    catch(Exception e)
    {
        out.print(e);
    }
  
%>




</table>
<div>
    
    <br><br>
</div>

    <footer class="main-footer">
        <div class="footer-top">
        </div>


        <div class="footer-main">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                    </div>


                    <div class="col-md-4">
                    </div>
                <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container text-right">
                Happyness care @ copyrights 2016 - by <a href="http://www.ouarmedia.com" target="_blank">Ouarmedia</a>
            </div>
        </div>
    </footer> <!-- main-footer -->

</html>
