<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">

   <head>
    <meta charset="utf-8">
    <title>PaintCraft</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="css/style1.css" rel="stylesheet">
 	<style>  
		table, th, td {  
		    border: 0px solid black;  
		    border-collapse: collapse;  
		}  
		th, td {  
		    padding: 10px;  
		}  
		table#alter tr:nth-child(even) {  
		    background-color: #eee;  
		}  
		table#alter tr:nth-child(odd) {  
		    background-color: #fff;  
		}  
		table#alter th {  
		    color: white;  
		    background-color: gray;  
		}  
	</style>     
</head>
<body>
   <!-- Topbar Start -->
    <div class="container-fluid bg-dark">
        <div class="row py-2 px-lg-5">
            <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center text-white">
                    <small><i class="fa fa-phone-alt mr-2"></i>+012 345 6789</small>
                    <small class="px-3">|</small>
                    <small><i class="fa fa-envelope mr-2"></i>info@example.com</small>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="adminHome.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-book-reader mr-3"></i>PaintCRAFT</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="adminHome.jsp" class="nav-item nav-link">Home</a>
                    <a href="Users.jsp" class="nav-item nav-link">Users</a>
                    <a href="Enquiries.jsp" class="nav-item nav-link">Enquiries</a>
                    <a href="UserContact.jsp" class="nav-item nav-link active">User Contacted</a>
                    <a href="login.jsp?logout" class="nav-item nav-link">Logout</a>
                </div>
                <a href="" class="btn btn-primary py-2 px-4 d-none d-lg-block">Join Us</a>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


  

   <!-- About Start -->
    <div class="container-fluid py-0">
        <div class="container py-0">
            <div class="row">
                <!-- <div class="col-lg-3 mb-3 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100" src="img/courses-5.jpg" style="object-fit: cover;">
                    </div>
                </div> -->
                
                <div class="col-lg-12">
                    <div class="section-title position-relative mb-4">
                        <h6 class="d-inline-block position-relative text-secondary text-uppercase pb-2">View Contacted User</h6>
                        <!-- <div class="display-4"><br></ br></div> -->
                    </div>
                    <div class="contact-form">
                            <div class="row">
                            <table id="alter" align="center">  
								<tr>
									<th>Sr. No.</th>
									<th>Users Names</th>
									<th>Email Id</th>
									<th>Contact No.</th>
									<th>Subject</th>
									<th>User Message</th>
								</tr>   					
						<%
						int srno=0;
						Connection con = DbConnection.getConnection();
						PreparedStatement ps = con.prepareStatement("select * from contactus");
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							srno++;
							%>
								<tr>
									<td><%=srno %></td>
									<td><%=rs.getString("name") %></td>
									<td><%=rs.getString("email") %></td>
									<td><%=rs.getString("contact") %></td>
									<td><%=rs.getString("subject") %></td>
									<td><%=rs.getString("message") %></td>
								</tr> 
							<%} %> 
          				</table>
					</div>
					</div>
                    </div>
                    </div>
                </div>
            </div>
  <br></ br><br></ br><br></ br>
    <!-- About End -->
    
    <div class="container-fluid bg-dark text-white-50 border-top py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                    
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <p class="copyright">
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | PaintZEN  by <a href="" target="_blank">Prachi Khatri</a>
  </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary rounded-0 btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
