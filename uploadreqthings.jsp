<%-- 
    Document   : uploadreqthings
    Created on : Oct 16, 2016, 8:02:47 AM
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
        <div>Update Required Things</div> 
        </h1></center>
            <div align="right">
                <form method="post" action="http://localhost:16858/happyness/uploadreqthings.jsp">
                    <table align="center" >
                        
                                <tr><td><h4>Donation Thing Type:<td><select name="type" required>
                          <option>Select</option>
                           <option >Education</option>
                            <option>Furniture</option>
                            <option>Clothes</option>
                            <option>Other</option>
                        </select></td>
                    
                        <tr><td><h4>Description:<td><textarea name="desc" rows="4" cols="20">
                                        </textarea></td>>
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
    //    out.println("driver registered");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/orphan","root","savita");
  //    out.println("succ");   
        Statement st=con.createStatement();
        int i=0;
        
    ResultSet rs=st.executeQuery("select max(itemid) from thingslist");
//     out.println("succss");   
    
    while(rs.next())
    {
        i=rs.getInt(1)+1;
    }
           String type=request.getParameter("type");
           String desc=request.getParameter("desc");
          
               PreparedStatement stmt=con.prepareStatement("insert into thingslist values(?,?,?)");
                    
                         stmt.setInt(1, i);
                         stmt.setString(2, type);
                         stmt.setString(3, desc);
                        
                         stmt.execute();
                         if(stmt.executeUpdate()>0)
                         {
                                                               
	   				out.println ("<script type=\"text/javascript\">");
	   				out.println("alert('UPdated Successfully!!');");
	   				out.println("location='#'; ");
	   				out.println("</script>");

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

    