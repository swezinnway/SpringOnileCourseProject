<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/common/include.jsp"%>
<%@ include file="/WEB-INF/bootstrap.jsp"%>
<%@ page isELIgnored="false" %>


<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       <link rel="icon" href="img/favicon.png" type="image/png">
        <title>Learn IT Education</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <link rel="stylesheet" href="vendors/popup/magnific-popup.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        
        <!--================Header Menu Area =================-->
       <header class="header_area">
           	<div class="top_menu row m0">
           		<div class="container">
					<div class="float-left">
						<ul class="list header_social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</div>
					<div class="float-right">
						
						
                        <ul class="list header_social">
							
			<a href="login.html" class="small btn btn-success px-4 py-2 rounded-0" ><i class="fa fa-users"></i> Log In</a>
            <a href="regieter.jsp" class="small btn btn-success px-4 py-2 rounded-0"><i class="fa fa-unlock-alt"></i> Register</a>
						</ul>
                         
                           
                           
					</div>
           		</div>	
           	</div>	
            <div class="main_menu">
            	<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li> 
								<li class="nav-item"><a class="nav-link" href="about-us.html">About</a></li> 
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Courses</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="courses.html"><c:forEach items="${courseList }" var="its" varStatus="row">
			<tr>
				
				<td>${its.course_name}</td>
				
			</tr>
		</c:forEach></a>
										
									</ul>
								</li> 
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
									</ul>
								</li> 
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
										<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
									</ul>
								</li> 
								<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
							</ul>
						</div> 
					</div>
            	</nav>
            </div>
        </header>
        <!--================Header Menu Area =================-->
        <!--================Home Banner Area =================-->
        <section class="home_banner_area">
            <div class="banner_inner d-flex align-items-center">
            	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h3>Onile learning Course  </h3>
						
						<a class="main_btn" href="#">Join for free</a>
					</div>
				</div>
            </div>
        </section><br><br>
        <!--================End Home Banner Area =================-->
         <!--================Finance Area =================-->
        <section >
        	 <div class="container" style="min-height:300px;">
        
     		<div class="main_title">
        			<h2 class="nav-link">OUR COURSE</h2>
        			
        		</div>
	

		
  
  <div class="row">
<c:forEach items="${courseList }" var="course" varStatus="row">
  <!--Grid column-->
  <div class="col-lg-6 col-md-8">
 <div class="card border-success mb-4">
    <!--Card-->
    <div class="card" style="max-width: 600px;">
    <div class="row no-gutters">
        <div class="col-sm-5" >
            <img src="./images/${course.photopath}" class="card-img-top h-100" alt="...">
        </div>
        <div class="col-sm-7">
            <div class="card-body">
                <h4 class="card-title">${course.course_name }</h4>
                <p class="card-text">${course.course_description}</p>
                 <a href="/level/${course.course_id}" class="btn btn-success">Course</a>
            </div>
        </div>
    </div>
</div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    <!--/.Card-->

  </div>
  
  
  
  
  
  
  
  
  
  </c:forEach>
  
  

</div>
  
</div>

	

        </section>
        <!--================End Finance Area =================-->
       
        
       
        
   
        
        
        <!--================Latest Blog Area =================-->
        <section class="latest_blog_area p_120">
        	<div class="container">
        		<div class="main_title">
        			<h2>Latest Posts From Blog</h2>
        			<p>There is a moment in the life of any aspiring astronomer that it is time to buy that first telescope. It’s exciting to think about setting up your own viewing station.</p>
        		</div>
        		<div class="row latest_blog_inner">
        			<div class="col-lg-3 col-md-6">
        				<div class="l_blog_item">
        					<img class="img-fluid" src="img/latest-blog/l-blog-1.jpg" alt="">
        					<a class="date" href="#">25 October, 2018  |  By Mark Wiens</a>
        					<a href="single-blog.html"><h4>Addiction When Gambling Becomes A Problem</h4></a>
        					<p>Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their desktops, while delivery</p>
        				</div>
        			</div>
        			<div class="col-lg-3 col-md-6">
        				<div class="l_blog_item">
        					<img class="img-fluid" src="img/latest-blog/l-blog-2.jpg" alt="">
        					<a class="date" href="#">25 October, 2018  |  By Mark Wiens</a>
        					<a href="single-blog.html"><h4>Addiction When Gambling Becomes A Problem</h4></a>
        					<p>Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their desktops, while delivery</p>
        				</div>
        			</div>
        			<div class="col-lg-3 col-md-6">
        				<div class="l_blog_item">
        					<img class="img-fluid" src="img/latest-blog/l-blog-3.jpg" alt="">
        					<a class="date" href="#">25 October, 2018  |  By Mark Wiens</a>
        					<a href="single-blog.html"><h4>Addiction When Gambling Becomes A Problem</h4></a>
        					<p>Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their desktops, while delivery</p>
        				</div>
        			</div>
        			<div class="col-lg-3 col-md-6">
        				<div class="l_blog_item">
        					<img class="img-fluid" src="img/latest-blog/l-blog-4.jpg" alt="">
        					<a class="date" href="#">25 October, 2018  |  By Mark Wiens</a>
        					<a href="single-blog.html"><h4>Addiction When Gambling Becomes A Problem</h4></a>
        					<p>Computers have become ubiquitous in almost every facet of our lives. At work, desk jockeys spend hours in front of their desktops, while delivery</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Latest Blog Area =================-->
        
       
        
        <!--================ start footer Area  =================-->	
        <footer class="footer-area p_120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Top Products</h6>
                            <ul class="list">
                            	<li><a href="#">Managed Website</a></li>
                            	<li><a href="#">Manage Reputation</a></li>
                            	<li><a href="#">Power Tools</a></li>
                            	<li><a href="#">Marketing Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Quick Links</h6>
                            <ul class="list">
                            	<li><a href="#">Jobs</a></li>
                            	<li><a href="#">Brand Assets</a></li>
                            	<li><a href="#">Investor Relations</a></li>
                            	<li><a href="#">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Features</h6>
                            <ul class="list">
                            	<li><a href="#">Jobs</a></li>
                            	<li><a href="#">Brand Assets</a></li>
                            	<li><a href="#">Investor Relations</a></li>
                            	<li><a href="#">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Resources</h6>
                            <ul class="list">
                            	<li><a href="#">Guides</a></li>
                            	<li><a href="#">Research</a></li>
                            	<li><a href="#">Experts</a></li>
                            	<li><a href="#">Agencies</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <aside class="f_widget news_widget">
        					<div class="f_title">
        						<h3 class="footer_title">Newsletter</h3>
        					</div>
        					<p>Stay updated with our latest trends</p>
        					<div id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                	<div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-arrow-right"></span></button>		
                                    </div>				
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
        				</aside>
                    </div>
                </div>
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-md-8 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-4 col-md-4 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
		<!--================ End footer Area  =================-->
        
        
        
        
        
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/stellar.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope.pkgd.min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/popup/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendors/counter-up/jquery.counterup.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="js/theme.js"></script>
    </body>
</html>