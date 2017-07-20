<%-- 
    Document   : invitation
    Created on : Oct 17, 2016, 3:12:30 AM
    Author     : Lapy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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

    
    
    
	<div class="page-heading text-center">
            <br><br>
        </div>
    	<div class="main-container">

		<div class="container">

			<div class="row fadeIn animated">

				<div class="col-md-6">

					<img src="assets/images/about-us.jpg" alt="" class="img-responsive">

				</div>
				<div class="col-md-6">

                                    <h2 class="title-style-2"> "You can make the difference!"</h2><br><h3 align=center>&copy;HAPPYNESS CARE <span class="title-under"></span></h3>
<h3 class="title-style-1"> Invitation for all <span class="title-under"></span></h3>
<h3 align="center">Act of Kindness</h3>







    <%
            try
    {
        Class.forName("com.mysql.jdbc.Driver");
        //out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
            // out.println("succ");   
        Statement st=con.createStatement();

       
        ResultSet rs=st.executeQuery("select max(id) from invitation");
    int i=0;
        while(rs.next())
        i=rs.getInt(1);
        //out.println(i);
       ResultSet rs1=st.executeQuery("select * from invitation where id="+i);
        
       while(rs1.next())
    {
      String name=rs1.getString(2);
      String date=rs1.getString(3);
      String time=rs1.getString(4);
      String addr=rs1.getString(5);
      String detail=rs1.getString(6);
    
    %>
    
    
    
					<p>
                                        <h4> We request the pleasure of your presence at our Event <b><u>"<%out.println(name);%>"	</u></b></p>
</h4>
					<p>
                                            <h4>In association with <b>SP college pune-30</b></h4>
                                            
                                            <br><h4> Date:<%out.println(date);%>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Time:<%out.println(time);%>
                                                </h4>
                                        </p>

					<p>
                                           <h4> Venue:<%out.println(addr);%>
					</h4>
                                        </p>
					
					<p>
                                            <h4>Contact:
                                        <br><h4>
                                            Event Manager:<%out.println(detail);%>
                                            </h4></p>
	                        </div>

			</div> <!-- /.row -->


                </div>
        </div>
    
            <a href="thanku.jsp"><b><h4>Back</a>
                                    </div>
        </div>

        <%
            }
        
        }
        catch(Exception e){}%>
     
        
     </div>
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

    </body>
    
</html>



        