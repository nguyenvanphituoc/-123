<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<%
	User us = (User) session.getAttribute("user");
%>
<title>Boss <%=us.getuLastname()%></title>

<!-- Bootstrap Core CSS -->

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-social.css" rel="stylesheet"
	type="text/css">
<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- main css -->
<link href="../css/main.css" rel="stylesheet">


</head>

<body class="adnin user">
	<button class="adminbtnaction hidden" data-toggle="modal"
		data-target="#myModal">Login</button>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Some Action Completed</h4>
				</div>
				<div class="modal-body">
					<p>${applicationScope['action_actor'].toString()}</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
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
				<ul class="mynav nav navbar-nav navbar-right" noLogin="1">
					<li class="home"><a href="index.jsp" title="Home"> <span
							class="icon"><i class="glyphicon glyphicon-home"
								title="Trang Chủ"></i></span> <span>Trang Chủ</span>
					</a></li>
					<li class="register"><a class="" href="register.jsp"
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
					<li class="dropdown mypage selected"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">MyPage <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<ins>Profile</ins>
							<li><a href="#">Home</a></li>
							<ins>Other</ins>
							<li class=""><a href="logout">Sign out</a></li>
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
			<div class="col-lg-12 col-sm-12 col-md-12">
				<h1 class="page-header">
					Tập Chí Khoa Học Kỹ Thuật <small>Boss <%=us.getuLastname()%></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Boss <%=us.getuLastname()%></li>
				</ol>
			</div>
		</div>
	</div>
	<div id="user_content">
		<div class="container" id="editor_room">
			<div class="float-left-area  col-md-2 col-sm-2 mycollapse">
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
							<li class="actived"><a href="person_homepage.jsp"
								class="glyphicon glyphicon-user">Profile</a></li>
							<!-- 	<li><a href="person_message.jsp"
								class="glyphicon glyphicon-envelope">Message</a></li>-->
							<li><a href="person_journal.jsp"
								class="glyphicon glyphicon-book">Journal</a></li>
							<li><a href="person_other.jsp"
								class="glyphicon glyphicon-asterisk">Other</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Page Content -->
			<div class="float-center-area  col-md-10 col-sm-10" id="center">
			</div>
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

	<!-- isLogin , khi đang ở file w3data.js gọi đến file jsp-->
	<%@ page import="model.User"%>
	<%!public String getURL(int i) {
		String url;
		switch (i) {
			case 1 :
				url = "editor.jsp";
				break;

			case 2 :
				url = "author.jsp";
				break;

			case 3 :
				url = "reviewer.jsp";
				break;

			case 4 :
				url = "reader.jsp";
				break;
			default :
				url = "admin.jsp";
		}

		return url;
	}%>
	<%
		if (us == null || (us.getID() == null) || (us.getID() == "")) {
	%>
	<script type="text/javascript">
			var $headernav = $('#bs-example-navbar-collapse-1 ul.mynav')[0];
			$headernav.attributes["noLogin"].value = 1;
		</script>
	<%
		} else {
	%>
	<script type="text/javascript">
			var $headernav = $('#bs-example-navbar-collapse-1 ul.mynav')[0];
			$headernav.attributes["noLogin"].value = 0;
			var li = $headernav.children[$headernav.children.length-1];
			// đổi tên Mypage thành tên của user			
			var a = li.querySelector("a");
			var innerText = "<%=us.getuFirstname() + " " + us.getuLastname() + " "%> </span> <b class='caret'></b>";
			a.innerHTML  = "<span class='icon'><i class='glyphicon glyphicon-user' title='Trang Cá Nhân'></i></span> <span>"
			a.innerHTML += innerText;
			a.innerHTML +="";
			// gán sự kiện cho btn home của user
			var ul = li.querySelector("ul");
			var allA = ul.querySelectorAll("a");
			allA.forEach(function(item, index) {
				if(item.innerText === "Home"){
					item.setAttribute("href", "<%=getURL(us.getuClass())%>");
				}
			})
			</script>
	<%
		}
	%>
	<!-- main.js -->
	<script src="../js/main.js"></script>
	<script type="text/javascript">
			function Start() {
				console.log("start");
				var $content = $("#center .content");
				var $anchor = $('#nav-bar-collapse').find('a');
				var $sidebar = $('#nav-bar-collapse');
				var $li = $anchor.parents('ul').find('li');
		
				var a;
				for (var i = 0; i < $li.length; i++) {
					if ($li[i].attributes["class"] != null) {
						a = $li[i].querySelector('a');
						break;
					}
				}
		
				a.click();
		
			}
			$(document).ready(Start);
		</script>
	<c:if
		test="${applicationScope['action_actor'].toString() != null && applicationScope['action_actor'].toString() != ''}">
		<script type="text/javascript">
		$('.adminbtnaction').click();
	</script>
	getServletContext().removeAttribute("action_actor"); 
	</c:if>
</body>

</html>
