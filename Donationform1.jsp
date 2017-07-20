<%-- 
    Document   : Donationform
    Created on : Oct 15, 2016, 7:55:20 PM
    Author     : Lapy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>

 <!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Donation Form| Charity / Non-profit</title>
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
			</p>
			
		</div>

	</div>

        
        
        
        
        
        
        
        <h1><center>
        <div>Donate Now</div>
        </h1></center>
                <form method="post" action="http://localhost:16858/happyness/Donationform.jsp">
                    <table align="center" >
                                <tr><td><h4>Name:<td><input type="text" name="name" required>
                                    </td></td></tr>
                                
                                <tr><td><h4>Contact:<td><input type="text" name="contact" required>
                                    </td></td></tr>
                                
                                <tr><td><h4>Address:<td><input type="text" name="address" required>
                                    </td></td></tr>
                                <tr><td><h4>Donation Thing Type:<td><select name="type" required>
                          <option>Select</option>
                           <option >Education</option>
                            <option>Furniture</option>
                            <option>Clothes</option>
                            <option>Other</option>
                        </select></td>
                    
                                <tr><td><h4>Description:<td><input type="text" name="desc" required>
                                    </td></td></tr>
                                <tr><td><h4>Upload image:<td><input type="file" name="img"  width="100" required/></td></td></tr>
                                <tr><td><br><br></td></tr>
                                <tr><td> <input type="submit" name="submit" >
                                    <td><input type="reset" name="reset" value="Clear"></td></td></tr>
                                    
                    </table>
                    <br><br>
                    <center>
            
    <%                    
   try                             
     {
       // PrintWriter out = response.getWriter();
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
                         if(rs1>0)
                         {
                             response.sendRedirect("thanku.jsp");
                         }
    }
    catch(Exception ex){
        }
   
    

    %>                  
                        
                        
    </body>
    
    
    
    
    
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
