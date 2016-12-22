﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import =" java.io.IOException" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Đăng Ký</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-social.css" rel="stylesheet"
	type="text/css">

<!-- Custom CSS -->
<link href="../css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<style>
.afterclicksubmit {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	position: fixed;
	z-index: 9999;
	background-color: rgba(0, 0, 0, 0.6);
	animation: fadeIn 1s;
}

.loader {
	color :  #fff;
	border : 16px solid #fff; /* Light grey */
	border-top: 16px solid #3498db; /* Blue */
	border-left : 16px solid #123456;
	border-right : 16px solid #654321;
	border-radius: 50%;
	margin: 10% 47%;
	z-index: 10000;
	width: 120px;
	height: 120px;
	animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
<link href="../css/main.css" rel="stylesheet">
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
	<div class="afterclicksubmit hidden">
		<div class="loader ">Vui Lòng Chờ Đợi...</div>
	</div>


	<!-- header pageeeeeeeeeeeeeeeeeeeeeeeeeeeeee -->
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
				<ul class="mynav nav navbar-nav navbar-right" noLogin="1">
					<li class="home "><a href="index.jsp" title="Home"> <span
							class="icon"><i class="glyphicon glyphicon-home"
								title="Trang Chủ"></i></span> <span>Trang Chủ</span>
					</a></li>
					<li class="register selected"><a class="" href="register.jsp"
						title="Đăng Ký"> <span class="icon"><i
								class="fa fa-share-alt" title="Join Us"></i></span> <span>Đăng
								Ký</span>
					</a></li>

					<li class="contact"><a class="" href="contact.jsp"
						title="Liên Hệ"> <span class="icon"><i
								class="fa fa-phone"></i></span> <span>Liên Hệ</span>
					</a></li>

					<li class="login"><a class="" href="signin.jsp"
						title="Đăng Nhập"> <span class="icon "><i
								class="fa fa-user" title="Đăng Nhập"></i></span> <span>Đăng Nhập</span>
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
	<!-- index.jsp Navigation start-->
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header ">
				<button data-target="#bs-example-navbar-collapse-2"
					data-toggle="collapse" class="navbar-toggle collapsed"
					type="button">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div id="bs-example-navbar-collapse-2"
				class="collapse navbar-collapse">
				<ul class="nav navbar-nav ">
					<li><a title="About Us" href="about.jsp">Chi Tiết Về
							Website</a></li>
					<li class="dropdown"><a aria-expanded="false" role="button"
						data-toggle="dropdown" class="dropdown-toggle" href="#"
						title="Journals">Danh Sách Tạp Chí<span class="caret"></span></a>
						<ul role="menu" class=" dropdown-menu">
							<li><a title="A-Z Journals" href="#">Theo Bảng Chữ Cái
									A-Z</a></li>
							<li><a title="Browse By Subject" href="#">Theo Thể Loại</a></li>
							<!--                <li><a title="Browse By Indexing" href="http://www.omicsonline.org/omics-group-indexed-journals-list-medline-isi-scopus.php">Browse By Indexing</a></li>-->
						</ul></li>
					<li><a title="Editors-in-Chief" href="#">Danh Sách Tổng
							Biên tập</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Navigation Ends -->
	<!-- header pageeeeeeeeeeeeeeeeeeeeeeeeeeeeee -->
	<!-- Page Content -->

	<div class="container">
		<div class="panel panel-default input_">
			<div class="panel-body">
				<div class="col-md-3"
					style="border-right: 3px solid gray; margin-right: 25px;">
					<p>
						<span style="font-weight: bold;">Confirm Registration Page
						</span><br>.
					</p>
				</div>
				<div class="col-md-8">
					<form class="form-horizontal" action="../register" method="post"
						role="form" accept-charset="UTF-8" name="myform">
						<%
							request.setCharacterEncoding("UTF-8");
						%>
						<div class="hidden">
							<input type="text" name="first_name"
								value='<%=request.getParameter("first_name")%>'> <input
								type="text" name="last_name"
								value='<%=request.getParameter("last_name")%>'> <input
								type="text" name="email"
								value='<%=request.getParameter("email")%>'> <input
								type="text" name="user_name"
								value='<%=request.getParameter("user_name")%>'> <input
								type="text" name="user_password"
								value='<%=request.getParameter("user_password")%>'> <input
								type="text" name="class"
								value='<%=request.getParameter("class")%>'>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="first_name">Given/First
								Name: <span>*</span>
							</label>
							<div class="col-md-8">
								<label><%=request.getParameter("first_name")%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="last_name">Family/
								Last Name: </label>
							<div class="col-md-8">
								<label><%=request.getParameter("last_name")%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="email">Email:
							</label>
							<div class="col-md-8">
								<label><%=request.getParameter("email")%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="user_name">User:
								<span>*</span>
							</label>
							<div class="col-md-8">
								<label><%=request.getParameter("user_name")%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="user_password">Pass:
								<span>*</span>
							</label>
							<div class="col-md-8">
								<label> <%
 	int len = request.getParameter("user_password").length();
 	String passwd = "";
 	for (int i = 0; i < len; i++)
 		passwd += "*";
 %> <%=passwd%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="class">Role:
								<span>*</span>
							</label>
							<div class="col-md-8">
								<%
									int cl = Integer.parseInt(request.getParameter("class"));
									String role = "";
									switch (cl) {
										case 1 :
											role = "Editor";
											break;
										case 2 :
											role = "Author";
											break;
										case 3 :
											role = "Reviewer";
											break;
										case 4 :
											role = "Reader";
											break;
										default :
											role = "Admin";
											break;
									};
								%>
								<label><%=role%></label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="row">
							<p class="h6 mess">
								<span class="label-warning">WARNING</span> -If the information
								is correct and you wish to complete your registration, click the
								'Continue' button below.
							</p>
							<br>
							<div class="clearfix"></div>
						</div>

						<div class="row ">
							<div class="btn col-md-3">
							<%! void previousPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
								request.getRequestDispatcher("register_youraccount.jsp").forward(request, response);
							} %>
								<button class="btn-default" type="button" title="Previous page"
									value="<< Quay lại" onclick="register_complete.jsp">Previous Page</button>
							</div>
							<div class="btn col-md-3">
								<button class=" btn-default" type="button" title="continue"
									value="Tiếp tục >>" onclick="submitform();">Đăng Ký</button>
							</div>
						</div>
					</form>
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
									<li><a title="Google+"
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
	<script type="text/javascript">
		function submitform() {
			if (document.myform.onsubmit &&
				!document.myform.onsubmit()) {
				return;
			}
			$('.afterclicksubmit').removeClass('hidden');
			document.myform.submit();
		}
	</script>
</body>

</html>
