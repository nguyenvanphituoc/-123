<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Đăng Nhập Thành Công</title>

<!-- Bootstrap Core CSS -->

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-social.css" rel="stylesheet"
	type="text/css">
<link href="../css/main.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="../css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- background -->
	<div class="background-allsite">
		<img width="100%" height="100%" src="../assets/background.jpg" />
	</div>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="index.jsp"><img alt="" src="../assets/logo.jpg"
					height="54px" width="256px"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="mynav nav navbar-nav navbar-right">
					<li><a href="index.jsp" title="Home"> <span class="icon"><i
								class="fa fa-home active" title="Trang Chủ"></i></span> <span>Trang
								Chủ</span>
					</a></li>
					<li><a href="register.jsp" title="Đăng Ký"> <span
							class="icon"><i class="fa fa-share-alt" title="Join Us"></i></span>
							<span>Đăng Ký</span>
					</a></li>

					<li><a href="contact.jsp" title="Liên Hệ"> <span
							class="icon"><i class="fa fa-phone"></i></span> <span>Liên
								Hệ</span>
					</a></li>

					<li class="selected"><a href="signin.jsp" title="Đăng Nhập">
							<span class="icon"><i class="fa fa-user" title="Đăng Nhập"></i></span>
							<span>Đăng Nhập</span>
					</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!-- Navigation End-->
	<!-- HEADER PAGE  -->
	<div>
		<h1 class="page-header" align="center">TẠP CHÍ KHOA HỌC ĐẠI HỌC
			SƯ PHẠM KỸ THUẬT</h1>
	</div>
	<!-- HEADER PAGE Ends-->
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Đăng Nhập <small>thành công</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Login</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Contact Form -->
		<div class="panel pannel-default input_">
			<div class="panel-body">
				<div class="col-md-3"
					style="border-right: 3px solid gray; margin-right: 25px;">
					<p>
						<span style="font-weight: bold;">Pre-registration Page </span><br>
						To register to use the Editorial Manager system, please enter the
						requested information. Upon successful registration, you will be
						sent an e-mail with instructions to verify your registration.
					</p>
				</div>
				<div class="col-md-6">
					<h1>Đăng Nhập Thành Công!</h1>
					<p>
						<%
							User user = (User)session.getAttribute("user");
							if ((user.getUsername() == null) || (user.getUsername() == "")) {
						%>
								You are not logged in<br /> <a href="signin.jsp">Please Login</a>
						<%
							} else {
						%>
						Welcome
						<%=user.getuFirstname().toString() + user.getuLastname().toString()%><a href='../logout'>Log
							out</a>
						<%
							}
						%>
					</p>
				</div>
			</div>
		</div>

		<hr>

		<!-- Footer -->
		<footer>
			<!-- Footer Area -->
			<div class="footer_wraper ">
				<div class="container">
					<div class="row ftrHrd">
						<h3>Contact Us</h3>
					</div>
					<div class="row">
						<div class="col-md-6"
							style="width: 600px; height: 200px; overflow: auto;">
							<div class="row contact_list">
								<div class="col-md-6 ftr-grid">
									<p>Agri, Food, Aqua &amp; Veterinary Science</p>
									<p>
										<span class="fa fa-user"></span>Dr. Krish
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:agrifoodaquavet@omicsinc.com">agrifoodaquavet@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001 <span
											class="pding-lft">Extn: 9040</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Clinical &amp; Biochemistry Journals</p>
									<p>
										<span class="fa fa-user"></span>Datta A
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:clinical_biochem@omicsinc.com">clinical_biochem@omicsinc.com
										</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9037</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row contact_list">
								<div class="col-md-6 ftr-grid">
									<p>Chemical Engineering &amp; Chemistry Journals</p>
									<p>
										<span class="fa fa-user"></span>Gabriel Shaw
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:chemicaleng_chemistry@omicsinc.com">chemicaleng_chemistry@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001 <span
											class="pding-lft">Extn: 9040</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Earth &amp; Environmental Sciences</p>
									<p>
										<span class="fa fa-user"></span>Katie Wilson
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:agrifoodaquavet@omicsinc.com">agrifoodaquavet@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9042</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row contact_list">
								<div class="col-md-6 ftr-grid">
									<p>General Science &amp; Health care Journals</p>
									<p>
										<span class="fa fa-user"></span>Andrea Jason
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:generalsci_healthcare@omicsinc.com">generalsci_healthcare@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9043</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Genetics &amp; Molecular Biology Journals</p>
									<p>
										<span class="fa fa-user"></span>Anna Melissa
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:genetics_molbio@omicsinc.com">genetics_molbio@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001 <span
											class="pding-lft">Extn: 9006</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row contact_list">
								<div class="col-md-6 ftr-grid">
									<p>Informatics Journals</p>
									<p>
										<span class="fa fa-user"></span>Stephanie Skinner
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:omics@omicsinc.com">omics@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9039</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Materials Science Journals</p>
									<p>
										<span class="fa fa-user"></span>Rachle Green
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:materialsci@omicsinc.com">materialsci@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9039</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row contact_list">
								<div class="col-md-6 ftr-grid">
									<p>Business &amp; Management Journals</p>
									<p>
										<span class="fa fa-user"></span>Ronald
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:business@omicsinc.com">business@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9042</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Engineering Journals</p>
									<p>
										<span class="fa fa-user"></span>James Franklin
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:engineering@omicsinc.com">engineering@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9042</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row contact_list ">
								<div class="col-md-6 ftr-grid">
									<p>Immunology &amp; Microbiology Journals</p>
									<p>
										<span class="fa fa-user"></span>David Gorantl
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:immuno_microbio@omicsinc.com">immuno_microbio@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001<span
											class="pding-lft">Extn: 9014</span>
									</p>
								</div>
								<div class="col-md-6 ftr-grid">
									<p>Mathematics &amp; Physics Journals</p>
									<p>
										<span class="fa fa-user"></span>Jim Willison
									</p>
									<p>
										<span class="fa fa-envelope-o"></span><a title="Click Here"
											href="mailTo:mathematics_physics@omicsinc.com">mathematics_physics@omicsinc.com</a>
									</p>
									<p>
										<span class="fa fa-phone"></span>1-702-714-7001 <span
											class="pding-lft">Extn: 9042</span>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-5">
							<!-- Embedded Google Map -->
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2927.2841334938607!2d106.77049805976237!3d10.85051803818832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa6c02de0a7c40d6c!2zVHLGsOG7nW5nIMSQSFNQIEvhu7kgVGh14bqtdCBUcC4gSENN!5e0!3m2!1sen!2s!4v1475592046833"
								width="100%" height="200" frameborder="0" style="border: 0"
								allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_wraper_btm">
				<div class="container">
					<div class="row">
						<div class="col-md-8" style="margin-top: 10px; color: #fff">
							<p class="footerNav">
								Content of this site is vailable under <a rel="nofollow"
									href="http://creativecommons.org/licenses/by/4.0/"
									target="_blank" style="color: #FFF;" title="click here">&nbsp;Creative
									Commons Attribution 4.0 License</a><br> Copyright &copy; 2016
								<a target="_blank" title="OMICS International"
									href="http://www.omicsonline.com/" class="footer_links">OMICS
									International</a> All Rights Reserved.
							</p>
						</div>
						<div class="col-md-4 socialIc">
							<div class="row margin-r-20">
								<ul>
									<li><a target="_blank" title="slideshare"
										class="btn btn-social-icon btn-openid"
										href="http://www.slideshare.net/OMICSPublishingGroup"> <span
											class="fa fa-slideshare"></span></a></li>
									<li><a title="Facebook"
										class="btn btn-social-icon btn-facebook"
										onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-facebook']);"
										href="https://www.facebook.com/omics" target="_blank"><i
											class="fa fa-facebook"></i></a></li>
									<li><a title="Twitter"
										class="btn btn-social-icon btn-twitter"
										onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-twitter']);"
										href="https://twitter.com/OMICSJournals" target="_blank"><i
											class="fa fa-twitter"></i></a></li>
									<li><a title="Google "
										class="btn btn-social-icon btn-google"
										onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-google']);"
										href="https://plus.google.com/+OmicsgroupOrg/" target="_blank"><i
											class="fa fa-google-plus"></i></a></li>
									<!-- <li> <a title="Pinterest" class="btn btn-social-icon btn-pinterest" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-pinterest']);" href="http://pinterest.com/omicspublishing/" target="_blank"><i class="fa fa-pinterest"></i></a> </li> -->
									<li><a title="LinkedIn"
										class="btn btn-social-icon btn-linkedin"
										onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-linkedin']);"
										href="http://www.linkedin.com/company/omics-publishing-group"
										target="_blank"><i class="fa fa-linkedin"></i></a></li>
									<li><a class="btn btn-social-icon btn-openid"
										href="http://www.omicsonline.org/ror.xml"><span
											title="Rss" class="fa fa-rss"></span></a></li>
									<li><a
										onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-tumblr']);"
										class="btn btn-social-icon btn-google"
										href="http://www.youtube.com/OMICSPublishingGroup"
										target="_blank"><span title="Youtube"
											class="fa fa-youtube"></span></a></li>
									<!--<li> <a title="Flickr" class="btn btn-social-icon btn-flickr" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-flickr']);" href="http://www.flickr.com/photos/omics-publishing-group/" target="_blank"><i class="fa fa-flickr"></i></a></li>-->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="../js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>

	<!-- Contact Form JavaScript -->
	<div class="scroll-top-wrapper">
		<span class="scroll-top-inner"> <i
			class="fa fa-2x fa-arrow-circle-up"></i>
		</span>
		<script>
			$(function() {
				$(document).on('scroll', function() {
					if ($(window).scrollTop() > 100) {
						$('.scroll-top-wrapper').addClass('show');
					} else {
						$('.scroll-top-wrapper').removeClass('show');
					}
				});
				$('.scroll-top-wrapper').on('click', scrollToTop);
			});
			function scrollToTop() {
				verticalOffset = typeof (verticalOffset) != 'undefined' ? verticalOffset : 0;
				element = $('body');
				offset = element.offset();
				offsetTop = offset.top;
				$('html, body').animate({
					scrollTop : offsetTop
				}, 500, 'linear');
			}
		</script>
	</div>
	<!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
	<script src="../js/jqBootstrapValidation.js"></script>
	<script src="../js/main.js"></script>
</body>

</html>
