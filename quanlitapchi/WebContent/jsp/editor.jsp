<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Đọc Giả</title>

<!-- Bootstrap Core CSS -->

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-social.css" rel="stylesheet"
	type="text/css">
<!-- text editor -->
<link rel="stylesheet" href="texteditor/samples.css">
<link rel="stylesheet" href="texteditor/neo.css">
<!-- manager_task -->
<link href="../css/manager_task.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- main css -->
<link href="../css/main.css" rel="stylesheet">


</head>

<body class="editor user">

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
				<ul class="nav mynav navbar-nav navbar-right">
					<li><a href="index.jsp" title="Home"> <span class="icon"><i
								class="glyphicon glyphicon-home" title="Trang Chủ"></i></span> <span>Trang
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

					<!--<li>
					 <a class="selected" href="reader_homepage.jsp"
						title="My page"> <span class="icon "><i
								class="fa fa-user" title="Đăng Nhập"></i></span> <span>My Page</span>
					</a> 
					
					</li>-->

					<li class="dropdown selected"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">MyPage <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class=""><label class="ins">Profile</label>
								<div>
									<a href="portfolio-1-col.html">Profile</a>
								</div></li>
							<li class=""><label class="ins">Message</label>
								<div>
									<a href="portfolio-4-col.html">Message</a>
								</div></li>
							<li class=""><label class="ins">Journal</label>
								<div>
									<a href="portfolio-4-col.html">Recent</a>
								</div>
								<div>
									<a href="portfolio-4-col.html">Room</a>
								</div></li>
							<li class=""><label class="del">Other</label>
								<div>
									<a href="portfolio-4-col.html">Sign out</a>
								</div></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!-- Navigation End-->
	<div class="container">
		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Tập Chí Khoa Học Kỹ Thuật <small>Reader</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Reader</li>
				</ol>
			</div>
		</div>
	</div>
	<div id="user_content">		
		<div class="container" id="editor_room">
			<div class="float-left-area  col-md-2 mycollapse">
				<div class=""></div>
				<div class="inner-left">
					<button type="button"
						class="sidebar-toggle glyphicon glyphicon-menu-down">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Sidebar -->
					<div id="sidebar-wrapper">
						<ul class="sidebar-nav" id="nav-bar-collapse">
							<li><a href="person_homepage.jsp"
								class="glyphicon glyphicon-user">Profile</a></li>
							<li><a href="person_message.jsp"
								class="glyphicon glyphicon-envelope">Message</a></li>
							<li class=" actived"><a href="editor_journal.jsp"
								class="glyphicon glyphicon-book">Journal</a></li>
							<li><a href="person_other.jsp"
								class="glyphicon glyphicon-asterisk">Other</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Page Content -->
			<div class="float-center-area  col-md-10" id="center"></div>
			<!-- /#page-content-wrapper -->
			<div class="clear-floated"></div>
			<hr>
			<!-- Footer -->
			<footer>
				<div class="footer_wraper_btm">
					<div class="container">
						<div class="row" style="width: 100%">
							<div class="col-md-7" style="margin-top: 10px; color: #fff">
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

						</div>
					</div>
				</div>
			</footer>
			<div class="scroll-top-wrapper">
				<span class="scroll-top-inner"> <i
					class="fa fa-2x fa-arrow-circle-up"></i>
				</span>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<!-- sidebar -->
	<script src="../js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- jquery 
	<script src="../js/jquery-3.1.1.min.js"></script>
		texteditor 
	<script src="texteditor/ckeditor.js"></script>
	<script src="texteditor/sample.js"></script>
	<script>
		initSample();
	</script>
		 manager_task  
	<script type="text/javascript" src="../js/manager_task.js"></script> -->
	<!-- main.js -->
	<script src="../js/main.js"></script>
		<script type="text/javascript">
		function Start() {
			console.log("a");
			var $content = $("#center");
	
			var $sidebar = $('#nav-bar-collapse');
			var $li = $anchor.parents('ul').find('li');
	
			var a;
			for (var i = 0; i < $li.length; i++) {
				if ($li[i].attributes["class"] != null) {
					a = $li[i].querySelector('a');
					break;
				}
			}
			$content.load(a.attributes['href'].value);
			var $tabAnchor = $('#tab').find('a');
			$tabAnchor.each(function(index, anchor){
				var tabAnchor = $tabAnchor[index];
				tabAnchor.addEventListener('click', function(e){
					e.preventDefault();
					var href = tabAnchor.attributes['href'].value;
					console.log('tabload ' + href );
					$content.load(href);
				})
			})
			
		}
		$(document).ready(Start);
	</script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>

</body>

</html>
