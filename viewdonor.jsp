<%-- 
    Document   : viewdonor
    Created on : Oct 16, 2016, 8:32:45 AM
    Author     : Lapy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>HAPPYNESS CARE | Charity / Non-profit </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootsrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">

        <!-- Template main Css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Modernizr -->
        <script src="assets/js/modernizr-2.6.2.min.js"></script>


    </head>

    <body>


    <header class="main-header">
        
    
        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-6 col-xs-12">

                        <ul class="list-unstyled list-inline header-contact">
                            <li> <i class="fa fa-phone"></i> <a href="tel:">+212 658 986 213 </a> </li>
                             <li> <i class="fa fa-envelope"></i> <a href="mailto:contact@happyness care.org">contact@happyness care.org</a> </li>
                       </ul> <!-- /.header-contact  -->
                      
                    </div>

                    <div class="col-sm-6 col-xs-12 text-right">

                        <ul class="list-unstyled list-inline header-social">

                            <li> <a href="#"> <i class="fa fa-facebook"></i> </a> </li>
                            <li> <a href="#"> <i class="fa fa-twitter"></i>  </a> </li>
                            <li> <a href="#"> <i class="fa fa-google"></i>  </a> </li>
                            <li> <a href="#"> <i class="fa fa-youtube"></i>  </a> </li>
                            <li> <a href="#"> <i class="fa fa fa-pinterest-p"></i>  </a> </li>
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
                  
                    <h2>Happiness Care</h2>
                  
                </div>

                <div id="navbar" class="navbar-collapse collapse pull-right">

                  <ul class="nav navbar-nav">

                    <li><a class="is-active" href="#">HOME</a></li>
                    <li><a href="about.html">ABOUT</a></li>
                    
                    <li><a href="gallery.html">GALLERY</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="index.html">LOGOUT</a></li>
                    <li><a href="donation.html">BACK</a></li>
                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-12 col-xs-12">

                      
                    </div>

    </header> <!-- /. main-header -->
        
        <h1><center>
        <div>Donor List</div> 
        </h1></center>
		<table class="table table-style-1">
					      <thead>
					        <tr>
					          <th>#</th>
					        <th> Name</th>
					        <th>Contact</th>
					        <th>Description</th>
					        <th>Image</th>
					          
                                                </tr>
					      </thead>
	
 <%                    
 
     try                             
     {
       // PrintWriter out = response.getWriter();
      Class.forName("com.mysql.jdbc.Driver");
    //    out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
  //    out.println("succ");   
        Statement st=con.createStatement();
        
    ResultSet rs=st.executeQuery("select * from donarlist");
//     out.println("succss");   
    
       while(rs.next())
    {
      String name=rs.getString(2);
      String contact=rs.getString(5);
        String desc=rs.getString(4);
        String img=rs.getString(7);
//        out.println(img);
    if(name!=null)
    {
     out.println("<tbody> <tr> <th scope='row'></th><td>");
     out.println(name);
     out.println("</td><td>");
     out.println(contact);
     out.println("</td><td>");
     out.println(desc);
     out.println("</td> <td>");
     out.println("<img src=images/causes/slider/"+img+" height=100 width=150 alt=" );
     out.println("</td> </tr>");
    }
    
    			
      
    }
     }
   
   
   catch(Exception ex){
        }
  %>
  
                </table>
  <h3 align="right">
  <a href="#" >back to top</a>
  
  
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

    