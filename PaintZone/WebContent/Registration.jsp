<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PaintCraft</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<%
		if(request.getParameter("logfail")!=null)
		{
			out.println("<script>alert('Login Failed or Not a Register User')</script>");
		}
	%>
    <div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span>+9359323774</a> 
							<a href="#"><span class="fa fa-paper-plane mr-1"></span> kulkarni.shraddha@siom.edu.in</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						<div class="social-media">
			    		<p class="mb-0 d-flex">
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
			    		</p>
		        </div>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="index.html">Paint<span>CRAFT</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate">

					<form action="Registration" name="ureg" method="post">
						<div class="row">
							<div class="col-4 form-group">
								<input type="text" name="fname" 
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter First Name" onblur="AllowAlphabet()"
									required="required">
							</div>
							<div class="col-4 form-group">
								<input type="text" name="mname"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Middle Name" onblur="AllowAlphabet()"
									required="required">
							</div>
							<div class="col-4 form-group">
								<input type="text" name="lname"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Last Name" onblur="AllowAlphabet()"
									required="required">
							</div>
						</div>

						<div class="row">
							<div class="col-4 form-group">
								<input type="text" name="email"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Email Id" onblur="return validEmail()"
									required="required">
							</div>
							<div class="col-4 form-group">
								<input type="text" name="mbno"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Contact No." maxlength="10"
									onblur="return Validate()" required="required">
							</div>
							<div class="col-4 form-group">
								<input type="text" name="address"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Address" onblur="return validaddress()"
									required="required">
							</div>
						</div>

						<div class="row">
							<div class="col-4 form-group">
								<input type="text" name="city"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter City Name" onblur="return validCollege()"
									required="required">
							</div>
							<div class="col-4 form-group">
								<input type="text" name="uname"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter Username" required="required">
							</div>
							<div class="col-4 form-group">
								<input type="password" name="pwd"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     Enter password > 6" required="required">
							</div>
						</div>
						
						<div class="row">
							<div class="col-4 form-group">
								<input type="date" name="dob"
									class="form-control border-top-0 border-right-0 border-left-0 p-0"
									placeholder="     DD / MM / YYYY" required="required">
							</div>
							<div class="col-4 form-group" align="center"><b style="color:white">Gender:-</b></div>
							<div class="col-4 form-group">
								<!-- <input type="text" name="gender" class="form-control border-top-0 border-right-0 border-left-0 p-0" placeholder="Middle Name" onblur="AllowAlphabet()" required="required"> -->
								<input type="radio" name="gender" value="Male" />&nbsp;&nbsp;<b style="color:white">Male</b>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="gender" value="Female" />&nbsp;&nbsp;<b style="color:white">Female</b>
							</div>
						</div>

						<div align="center">
							<button class="btn btn-primary py-3 px-5" type="submit"
								value="Registration">Registration</button>
							&nbsp;
							<button class="btn btn-primary py-3 px-5" type="reset"
								value="reset">Reset</button>
						</div>

					</form>

				</div>
        </div>
      </div>
    </div>

   <!--  <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    		<div class="row d-flex no-gutters">
    			<div class="col-md-5 d-flex">
    				<div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(images/about-1.jpg);">
    				</div>
    			</div>
    			<div class="col-md-7 pl-md-5 py-md-5">
    				<div class="heading-section pt-md-5">
	            <h2 class="mb-4">Why Choose Us?</h2>
    				</div>
    				<div class="row">
	    				<div class="col-md-6 services-2 w-100 d-flex">
	    					<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-confetti"></span></div>
	    					<div class="text pl-3">
	    						<h4>50 Years of Service</h4>
	    						<p>Far far away, behind the word mountains, far from the countries.</p>
	    					</div>
	    				</div>
	    				<div class="col-md-6 services-2 w-100 d-flex">
	    					<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-consult"></span></div>
	    					<div class="text pl-3">
	    						<h4>Professional &amp; Experienced Staff</h4>
	    						<p>Far far away, behind the word mountains, far from the countries.</p>
	    					</div>
	    				</div>
	    				<div class="col-md-6 services-2 w-100 d-flex">
	    					<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-winner"></span></div>
	    					<div class="text pl-3">
	    						<h4>High Quality &amp; Reliable Service</h4>
	    						<p>Far far away, behind the word mountains, far from the countries.</p>
	    					</div>
	    				</div>
	    				<div class="col-md-6 services-2 w-100 d-flex">
	    					<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-technical"></span></div>
	    					<div class="text pl-3">
	    						<h4>Customer Service &amp; Expert Advice</h4>
	    						<p>Far far away, behind the word mountains, far from the countries.</p>
	    					</div>
	    				</div>
	    			</div>
	        </div>
        </div>
    	</div>
    </section>


    <section class="ftco-counter" id="section-counter">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-4 mb-5 mb-md-0 text-center text-md-left">
    				<h2 class="font-weight-bold" style="color: #fff; font-size: 20px;">We Provide Free Quotation</h2>
    				<a href="#" class="btn btn-white btn-outline-white">Free Consultation</a>
    			</div>
    			<div class="col-md-8">
						<div class="row">
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="50">0</strong>
		              </div>
		              <div class="text">
		              	<span>Customer</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="850">0</strong>
		              </div>
		              <div class="text">
		              	<span>Professionals</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="20">0</strong>
		              </div>
		              <div class="text">
		              	<span>Products</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="50">0</strong>
		              </div>
		              <div class="text">
		              	<span>Collaboration </span>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>

    <section class="ftco-section ftco-intro" style="background-image: url(images/bg_2.jpg);">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
            <h2>Professional Coloring Services</h2>
          </div>
        </div>
    		<div class="row">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-cleaning"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">House Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-joist"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Roof Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-road"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Office Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>

          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-pipe"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Maintenance Services</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-kitchen"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Patio Cleaning</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-brickwall"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Building Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-wall"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Texture Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="d-block services">
              <div class="icon d-flex align-items-center justify-content-center">
            		<span class="flaticon-rajpath"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Floor Painting</h3>
                <p>Far far away, behind the word mountains, far from the countries.</p>
                <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
              </div>
            </div>      
          </div>
        </div>
    	</div>
    </section>


    <section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2>Before &amp; After Services</h2>
          </div>
        </div>
				<div class="row tabulation mt-4 ftco-animate">
  				<div class="col-md-4 order-md-last">
						<ul class="nav nav-pills nav-fill d-md-flex d-block flex-column">
						  <li class="nav-item text-left">
						    <a class="nav-link active py-4" data-toggle="tab" href="#services-1">House Washing</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-2">Roof Painting</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-3">Office Painting</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-4">House Painting</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-5">Texture Painting</a>
						  </li>
						  <li class="nav-item text-left">
						    <a class="nav-link py-4" data-toggle="tab" href="#services-6">Building Cleaning</a>
						  </li>
						</ul>
					</div>
					<div class="col-md-8">
						<div class="tab-content">
						  <div class="tab-pane container p-0 active" id="services-1">
						  	<div class="img" style="background-image: url(images/services-1.jpg);"></div>
					  		<h3><a href="#">House Washing</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-2">
						  	<div class="img" style="background-image: url(images/services-2.jpg);"></div>
						  	<h3><a href="#">Roof Painting</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-3">
						  	<div class="img" style="background-image: url(images/services-3.jpg);"></div>
						  	<h3><a href="#">Office Painting Cleaning</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-4">
						  	<div class="img" style="background-image: url(images/services-4.jpg);"></div>
						  	<h3><a href="#">Gutter Cleaning</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-5">
						  	<div class="img" style="background-image: url(images/services-5.jpg);"></div>
						  	<h3><a href="#">Texture Painting</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						  <div class="tab-pane container p-0 fade" id="services-6">
						  	<div class="img" style="background-image: url(images/services-6.jpg);"></div>
						  	<h3><a href="#">Building Cleaning</a></h3>
						  	<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						  </div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section testimony-section bg-light">
    	<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2>Happy Clients &amp; Feedbacks</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
							<div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="fa fa-quote-left"></i>
                    </span>
                    <p class="rate">
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    </p>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia</p>
                    <p class="name">Racky Henderson</p>
                    <span class="position">Father</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_2.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="fa fa-quote-left"></i>
                    </span>
                    <p class="rate">
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    </p>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia</p>
                    <p class="name">Henry Dee</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_3.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="fa fa-quote-left"></i>
                    </span>
                    <p class="rate">
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    </p>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia</p>
                    <p class="name">Mark Huff</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_4.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="fa fa-quote-left"></i>
                    </span>
                    <p class="rate">
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    </p>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia</p>
                    <p class="name">Rodel Golez</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img" style="background-image: url(images/person_1.jpg)">
                  </div>
                  <div class="text pl-4">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      <i class="fa fa-quote-left"></i>
                    </span>
                    <p class="rate">
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    </p>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia</p>
                    <p class="name">Ken Bosh</p>
                    <span class="position">Businesswoman</span>
                  </div>
                </div>
              </div>
						</div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section">
			<div class="container-fluid px-md-4">
				<div class="row">
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-1.jpg);">
            	<a href="images/gallery-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Roof cleaning</span>
	              	<h2><a href="work-single.html">Roof Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-2.jpg);">
            	<a href="images/gallery-2.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Driveway</span>
	              	<h2><a href="work-single.html">Gaston Driveway</a></h2>
	              </div>
              </div>
            </div>
          </div>

          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-3.jpg);">
            	<a href="images/gallery-3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Gutter Cleaning</span>
	              	<h2><a href="work-single.html">Gutter</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-4.jpg);">
            	<a href="images/gallery-4.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Patio Cleaning</span>
	              	<h2><a href="work-single.html">Patio Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-5.jpg);">
            	<a href="images/gallery-5.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Building Cleaning</span>
	              	<h2><a href="work-single.html">Building Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-6.jpg);">
            	<a href="images/gallery-6.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Building Cleaning</span>
	              	<h2><a href="work-single.html">Hall Way</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-7.jpg);">
            	<a href="images/gallery-7.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Patio Cleaning</span>
	              	<h2><a href="work-single.html">Garden Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="work mb-4 img d-flex align-items-end" style="background-image: url(images/gallery-8.jpg);">
            	<a href="images/gallery-8.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
	    					<span class="fa fa-expand"></span>
	    				</a>
            	<div class="desc w-100 px-4">
	              <div class="text w-100 mb-3">
	              	<span>Office</span>
	              	<h2><a href="work-single.html">Office Cleaning</a></h2>
	              </div>
              </div>
            </div>
          </div>
        </div>
			</div>
		</section>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2>Latest news from our blog</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text p-4">
              	<div class="meta mb-2">
                  <div><a href="#">June 14, 2020</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text p-4">
              	<div class="meta mb-2">
                  <div><a href="#">June 14, 2020</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text p-4">
              	<div class="meta mb-2">
                  <div><a href="#">June 14, 2020</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb img" style="background-image: url(images/bg_3.jpg);">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex justify-content-center">
    			<div class="col-md-12 col-lg-8 half p-3 py-5 pl-lg-5 ftco-animate">
    				<h2 class="mb-4">Free Consultation</h2>
    				<form action="#" class="appointment">
    					<div class="row">
    						<div class="col-md-12">
									<div class="form-group">
			    					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="" id="" class="form-control">
	                      	<option value="">Select services</option>
	                        <option value="">House Painting</option>
	                        <option value="">Roof Painting</option>
	                        <option value="">Oil Painting</option>
	                        <option value="">Office Painting</option>
	                        <option value="">Texture  Painting</option>
	                        <option value="">Building Painting</option>
	                        <option value="">Floor Painting</option>
	                     
	                      </select>
	                    </div>
			              </div>
			    				</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-wrap">
											<div class="icon"><span class="fa fa-user"></span></div>
				              <input type="text" class="form-control" placeholder="Your Name">
				            </div>
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-wrap">
											<div class="icon"><span class="fa fa-paper-plane"></span></div>
				              <input type="text" class="form-control" placeholder="Email Address">
				            </div>
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			    					<div class="input-wrap">
			            		<div class="icon"><span class="fa fa-calendar"></span></div>
			            		<input type="text" class="form-control appointment_date" placeholder="Date">
		            		</div>
			    				</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			    					<div class="input-wrap">
			            		<div class="icon"><span class="fa fa-clock-o"></span></div>
			            		<input type="text" class="form-control appointment_time" placeholder="Time">
		            		</div>
			    				</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
			            </div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <input type="submit" value="Send message" class="btn btn-primary py-3 px-4">
			            </div>
								</div>
    					</div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section> -->

    <!-- <footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Pressure Washing</h2>
						<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
						<ul class="ftco-footer-social p-0">
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
            </ul>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Latest News</h2>
						<div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(images/image_1.jpg);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                <div class="meta">
                  <div><a href="#">Jun 14, 2020</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#">19</a></div>
                </div>
              </div>
            </div>
            <div class="block-21 mb-4 d-flex">
              <a class="img mr-4 rounded" style="background-image: url(images/image_2.jpg);"></a>
              <div class="text">
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                <div class="meta">
                  <div><a href="#">Jun 14, 2020</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#">19</a></div>
                </div>
              </div>
            </div>
					</div>
					<div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
						<h2 class="footer-heading">Quick Links</h2>
						<ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">Home</a></li>
              <li><a href="#" class="py-2 d-block">About</a></li>
              <li><a href="#" class="py-2 d-block">Services</a></li>
              <li><a href="#" class="py-2 d-block">Works</a></li>
              <li><a href="#" class="py-2 d-block">Blog</a></li>
              <li><a href="#" class="py-2 d-block">Contact</a></li>
            </ul>
					</div>
					<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
						<h2 class="footer-heading">Have a Questions?</h2>
						<div class="block-23 mb-3">
              <ul>
                <li><span class="icon fa fa-map"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@yourdomain.com</span></a></li>
              </ul>
            </div>
					</div>
				</div>
				<div class="row mt-5">
          <div class="col-md-12 text-center">

            <p class="copyright">
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | PaintZEN  by <a href="" target="_blank">Prachi Khatri</a>
  </p>
          </div>
        </div>
			</div>
		</footer>
 -->
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>