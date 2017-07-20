<%-- 
    Document   : thanku
    Created on : Oct 16, 2016, 5:15:40 AM
    Author     : Lapy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>thank YOU| Charity / Non-profit</title>
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

                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

    </header> <!-- /. main-header -->

        
	<div class="page-heading text-center">

		<div class="container zoomIn animated">
			
			<h1 class="page-title">Donation <span class="title-under"></span></h1>
			<p class="page-description">
                  <h2 class="carousel-title bounceInDown animated slow">Together we can improve their lives</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow"> So let's do it !</h4>
                  
                  <h2 class="carousel-title bounceInDown animated slow" >A penny is a lot of money, if you have not got a penny.</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow">You can make the diffrence !</h4>
			</p>
			
		</div>

        </div><div align="center">
                    <h3 class="carousel-title bounceInDown animated slow" >Thank You for your valuable donation <br>and making a difference</h2>
                    <h4 class="carousel-subtitle bounceInUp animated slow">&copy; Happyness care </h4>
        </div>
    
    
    
                    <table align="center">
                        <tr>
                            <td>
                                <h2 class="carousel-title bounceInDown animated slow" >View Invitation for upcoming events<br><br>
                            </td>
                            <tr align="center">
                                <td>
                                    
<a href="#" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated" data-toggle="modal" data-target="#donateModal">VIEW INVITATION</a>

<a href="invitation.jsp" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated" >PRINT INVITATION</a>

<a href="donatedthingslist.jsp" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated" >BACK</a>

                                </td>
                            </tr>
                        </tr>
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

    
    
    
    
    <!-- Donate Modal -->


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
        
       ResultSet rs1=st.executeQuery("select * from invitation where id="+i);
   
       while(rs1.next())
    {
      String name=rs1.getString(2);
      String date=rs1.getString(3);
      String time=rs1.getString(4);
      String addr=rs1.getString(5);
      String detail=rs1.getString(6);
       
    %>
    

    <div class="modal fade" id="donateModal" tabindex="-1" role="dialog" aria-labelledby="donateModalLabel" aria-hidden="true">

      <div class="modal-dialog">
        <div class="modal-content">
         
            
          <div class="modal-body">

                <form class="form-donation">

                        <h3 class="title-style-1 text-center">Happyness Care Welcome's all
                            <span class="title-under"></span>  </h3>
                        <h4 align="center"> Act Of Kindness
                        <h4 align='center'> Together we can improve their lives</h4>

                        <div class="row">

                            <div class="form-group col-md-12 ">
                              Event Name:  <%out.println(name);%>
                            </div>

                        </div>


                        <div class="row">
                            <div class="form-group col-md-6">
                                DATE:<%out.println(date);%> </div>

                            <div class="form-group col-md-6">
                               TIME: <%out.println(time);%>
                            </div>
                        </div>


                        <div class="row">

                            <div class="form-group col-md-6">Contact_us
                                <h5 class='form-control'>+91-8796445459</h5>
                            </div>

                            <div class="form-group col-md-6">Email:
                                <h5 class='form-control'>happynesscare@gmail.com</h5>
                            </div>

                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
</div>
                        </div>

                        
                        <div class="row">
                            <div class="form-group col-md-6">Address: 
                                <h5><%out.println(addr);%></h5>
                             </div>
                            <div class="form-group col-md-6">
                                <h5>Event Manager:<br> <%out.println(detail);%></h5>
                             </div>
                                
                        </div>



                       
                    
                </form>

              <%
              }
}
              catch(Exception e){}%>
          </div>
        </div>
      </div>

    </div> <!-- /.modal -->





    <!--  Scripts
    ================================================== -->

    <!-- jQuery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>

    <!-- Bootsrap javascript file -->
    <script src="assets/js/bootstrap.min.js"></script>
    
    <!-- owl carouseljavascript file -->
    <script src="assets/js/owl.carousel.min.js"></script>

    <!-- Template main javascript -->
    <script src="assets/js/main.js"></script>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
        function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
        e=o.createElement(i);r=o.getElementsByTagName(i)[0];
        e.src='//www.google-analytics.com/analytics.js';
        r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
        ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>

</html>

