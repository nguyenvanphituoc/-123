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

<title>TẠP CHÍ KHOA HỌC</title>

<!-- Bootstrap Core CSS -->

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-social.css" rel="stylesheet"
	type="text/css">
<!-- Slick -->
<link rel="stylesheet" type="text/css" href="../css/slick/slick.css" />
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="../css/slick/slick-theme.css" />
<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- main css -->
<link href="../css/main.css" rel="stylesheet">



<!-- script -->
<!-- <script type="text/javascript" src="../js/bootstrap-select.min.js"></script> -->
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
	<nav class="navbar navbar-inverse navbar-fixed-top animsition"
		role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="" href="index.jsp"><img alt=""
					src="../assets/logo.jpg" height="54px" width="256px"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="mynav nav navbar-nav navbar-right" noLogin="1">
					<li class="home selected"><a href="index.jsp" title="Home">
							<span class="icon"><i class="glyphicon glyphicon-home"
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
					<li class="dropdown mypage"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">MyPage <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<ins>Profile</ins>
							<li class=""><a href="../logout" value="Home Page">Home</a></li>
							<ins>Other</ins>
							<li class=""><a href="logout"  value="Sign Out">Sign out</a></li>
						</ul></li>
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
				class="collapse navbar-collapse " align="center">
				<ul class="nav navbar-nav ">
					<li><a title="About Us" href="about.jsp">Chi Tiết Về
							Website</a></li>
					<li class="dropdown"><a aria-expanded="false" role="button"
						data-toggle="dropdown" class="dropdown-toggle" href="#"
						title="Journals">Danh Sách Tạp Chí<span class="caret"></span></a>
						<ul role="menu" class="dropdown-menu pds">
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

	<!-- Header Carousel -->
	<div id="myCarousel" class="carousel slide">
		<div class="item">
			<img class="img-responsive center-block"
				src="../assets/slider_mobile.png" alt="">
			<p>Caption 1</p>
		</div>
		<div class="item ">
			<img class="img-responsive center-block"
				src="../assets/slider_mobile.png">
			<p>Caption 2</p>
		</div>
		<div class="item">
			<img class="img-responsive center-block"
				src='http://placehold.it/1900x1080&amp;text=Slide Three' alt="">
			<p>Caption 3</p>
		</div>
	</div>
	<!-- Header Carousel END-->
	<!-- Srch Area -->
	<div class="srcharea_wrapper">
		<div class="container">
			<div class="row">
				<div class="text-left col-xs-12 col-md-6 socialIc social_ic">
					<ul class="list-inline">
						<li><a target="_blank" title="slideshare"
							class="btn btn-social-icon btn-openid" href="#"> <span
								class="fa fa-slideshare"></span></a></li>
						<li><a title="Facebook"
							class="btn btn-social-icon btn-facebook"
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-facebook']);"
							href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
						<li><a title="Twitter"
							class="btn btn-social-icon btn-twitter"
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-twitter']);"
							href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
						<li><a title="Google+" class="btn btn-social-icon btn-google"
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-google']);"
							href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
						<!-- <li> <a title="Pinterest" class="btn btn-social-icon btn-pinterest" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-pinterest']);" href="http://pinterest.com/omicspublishing/" target="_blank"><i class="fa fa-pinterest"></i></a> </li>-->
						<li><a title="LinkedIn"
							class="btn btn-social-icon btn-linkedin"
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-linkedin']);"
							href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
						<li><a class="btn btn-social-icon btn-openid" href="#"
							target="_blank"><span title="Rss" class="fa fa-rss"></span></a></li>
						<li><a
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-tumblr']);"
							class="btn btn-social-icon btn-google" href="#" target="_blank"><span
								title="Youtube" class="fa fa-youtube"></span></a></li>
						<li><a target="_blank" href="#"
							onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-tumblr']);"
							class="btn btn-social-icon btn-openid" title="Blog"><i
								class="icBlog"></i></a></li>
						<!--<li> <a title="Flickr" class="btn btn-social-icon btn-flickr" onclick="_gaq.push(['_trackEvent', 'btn-social-icon', 'click', 'btn-flickr']);" href="http://www.flickr.com/photos/omics-publishing-group/" target="_blank"><i class="fa fa-flickr"></i></a></li>-->
					</ul>
				</div>
				<div class="col-xs-12 col-md-6 m-t">
					<form class="form-horizontal pull-right" action="searchJournal" method="get"
						id="top-search-form" role="search">
						<div class="form-group">
							<div class="col-sm-10">
								<div class="input-group">
									<input type="text" placeholder="Search.." id="keyword"
										name="keyword" pattern=".{4,40}" required
										title="4 to 40 characters" autocomplete="on"
										class="srch_area"> <span class="input-group-btn">
										<button type="submit" value="Go" name="search"
										class="btn btn-info srch_btn">Go</button>
									</span>
								</div>
							</div>
						</div>
						<div id="suggestions_holder" class="suggestions"
							style="display: none;"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Srch Area -->
	<!-- Page Content -->
	<div class="container bg-white">
		<!-- Marketing Icons Section, row -->
		<div class="myFlex">
			<div class="panel panel-default" style="height: 450px">
				<h3 align="left" style="color: red" class="panel-heading">
					<i><img alt="" src="../assets/world_icon.png"></i>
					NOFITICATIONS
				</h3>
				<ul class="nofi-list list-unstyled equal-height panel-body"
					style="list-style: none;">
					<li class="row nofi-li-grid col-xs-12 col-md-12">
						<div>
							<span style="color: red; font-weight: bold;">></span> <a
								title="item 1" href="#">nofitication item 1</a>
						</div>
					</li>
					<li class="row nofi-li-grid col-xs-12 col-md-12">
						<div>
							<span style="color: red; font-weight: bold;">></span> <a
								title="item 2" href="#">nofitication item 2</a>
						</div>
					</li>
				</ul>
				<a href="#" class="btn btn-default btn-panel myButton" type="button">Xem
					Thêm</a>
			</div>
			<div class="panel panel-default" style="height: 450px">
				<h3 align="left" style="color: red" class="panel-heading">
					<i><img alt="" src="../assets/book_icon.png"></i> Free &amp;
					SCIENTIFIC JOURNALS
				</h3>
				<ul class="nofi-list list-unstyled equal-height panel-body"
					style="list-style: none;">
					<li class="row nofi-li-grid col-xs-12 col-md-12">
						<div>
							<span style="color: red; font-weight: bold;">></span> <a
								title="item 1" href="#">SCIENTIFIC JOURNALS item 1</a>
						</div>
						<div>
							<p>DateTime MM:DD-DD, YYYY City, Country</p>
						</div>
					</li>
					<li class="row nofi-li-grid col-xs-12 col-md-12">
						<div>
							<span style="color: red; font-weight: bold;">></span> <a
								title="item 2" href="#">Free &amp; SCIENTIFIC JOURNALS item
								2</a>
						</div>
						<div>
							<p>DateTime MM:DD-DD, YYYY City, Country</p>
						</div>
					</li>
				</ul>
				<a href="#" class="btn btn-default btn-panel myButton" type="button">Xem
					Thêm</a>
			</div>
			<div class="panel panel-default" style="height: 450px">
				<h3 align="left" style="color: red" class="panel-heading">
					<i><img alt="" src="../assets/event_icon.png"></i> EVENT
				</h3>
				<ul class="nofi-list list-unstyled equal-height panel-body"
					style="list-style: none;">
					<li class="row nofi-li-grid col-xs-12 col-md-12">
						<div>
							<p>
								Nham to chuc san choi cho cac sinh vien, truong dai hoc SPKT gui
								den cac ban sinh vien thu moi tham gia cuoc thi " <span><a
									title="item 1" href="#">EVENT item 1</a></span>" ve cac linh vuc ky
								thuat
							</p>
						</div>
						<div>
							<span style="color: red; font-weight: bold;">> <a
								title="item 1" href="#">EVENT Information item 1</a></span>"
						</div>
					</li>
				</ul>
				<a href="#" class="btn btn-default btn-panel myButton" type="button">Xem
					Thêm</a>
			</div>
		</div>
		<!-- /.row -->
		<!-- row -->
		<!-- journals -->
		<div class="bg_white ">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 m-t m-b  journals">
						<div class="panel panel-primary equal-height">
							<div class="panel-heading">
								<h3 class="panel-title">Journals by Subject</h3>
							</div>
							<div class="panel-body">
								<ul class='list-inline'>
									<li class="col-xs-12 col-md-6"><a
										title="Agri, Food & Aqua" href="#">Nông Nghiệp</a></li>
									<li class="col-xs-12 col-md-6"><a title="Biochemistry"
										href="#">Hóa Sinh</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Business & Management" href="#">Quản Lý Kinh Doanh</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Chemical Engineering" href="#">Kỹ Thuật Hóa Học</a></li>
									<li class="col-xs-12 col-md-6"><a title="Chemistry"
										href="#">Chemistry</a></li>
									<li class="col-xs-12 col-md-6"><a title="Clinical"
										href="#">Y Học Thực Hành</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Earth & Environmental Sciences" href="#">Trái Đất &
											Môi Trường</a></li>
									<li class="col-xs-12 col-md-6"><a title="Engineering"
										href="#">Kỹ Thuật</a></li>
									<li class="col-xs-12 col-md-6"><a title="General Science"
										href="#">Khoa Học Tổng Hợp</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Genetics & Molecular Biology" href="#">Di Truyền &
											Sinh Học Phân Tử</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Immunology & Microbiology" href="#">Miễn Dịch & Vi
											Sinh Vật học</a></li>
									<li class="col-xs-12 col-md-6"><a title="Informatics"
										href="#">Tin Học</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Nursing & Health Care" href="#">Điều Dưỡng & Chăm
											Sóc Sức Khỏe</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Material Sciences" href="#">Khoa Học Vật Liệu</a></li>
									<li class="col-xs-12 col-md-6"><a title="Mathematics"
										href="#">Toán Học</a></li>
									<li class="col-xs-12 col-md-6"><a title="Medical" href="#">Y
											Khoa</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Neuroscience & Psychology" href="#"> Khoa Học Thần
											Kinh & Tâm lý Học</a></li>
									<li class="col-xs-12 col-md-6"><a title="Physics" href="#">Vật
											Lý</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Social & Political Sciences" href="#">Khoa học Xã
											hội & Chính trị</a></li>
									<li class="col-xs-12 col-md-6"><a
										title="Veterinary Sciences" href="#">Thú Y</a></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- journals by subject-->
					<!-- Conferences by Subject -->
					<div
						class="col-xs-12 col-sm-4 col-md-4 col-lg-4 m-t m-b conferences">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">Conferences by Subject</h3>
							</div>
							<div class="panel-body equal-height-1">
								<ul class="list-unstyled">
									<li><a
										href="http://www.omicsonline.org/pharma-conferences.php"
										title="Click here">Pharmaceutical Sciences</a></li>
									<li><a
										href="http://www.omicsonline.org/pharmaceutical-marketing-conferences.php"
										title="Click here">Pharma Marketing &amp; Industry</a></li>
									<li><a
										href="http://www.omicsonline.org/agri-food-aqua-conferences.php"
										title="Click here">Agri, Food &amp; Aqua</a></li>
									<li><a
										href="http://www.omicsonline.org/nutrition-conferences.php"
										title="Click here">Nutrition</a></li>
									<li><a
										href="http://www.omicsonline.org/materialsscience-conferences.php"
										title="Click here">Physics &amp; Materials Science</a></li>
									<li><a
										href="http://www.omicsonline.org/environmental-science-conferences.php"
										title="Click here">Environmental Science</a></li>
									<li><a
										href="http://www.omicsonline.org/engineering-conferences.php"
										title="Click here">EEE &amp; Engineering</a></li>
									<li><a
										href="http://www.omicsonline.org/veterinary-conferences.php"
										title="Click here">Veterinary</a></li>
									<li><a
										href="http://www.omicsonline.org/chemicalengineering-conferences.php"
										title="Click here">Chemical Engineering</a></li>
									<li><a
										href="http://www.omicsonline.org/nanotechnology-conferences.php"
										title="Click here">Nanotechnology</a></li>
									<li><a
										href="http://www.conferenceseries.com/business-management-meetings/"
										target="_blank" title="Click here">Business Management</a></li>
									<li><a
										href="http://www.conferenceseries.com/massmedia-meetings/"
										target="_blank" title="Click here">Massmedia</a></li>
									<li><a
										href="http://www.omicsonline.org/geology-earth-science-conferences.php"
										title="Click here">Geology &amp; Earth science</a></li>
									<li><a
										href="http://www.omicsonline.org/petroleum-conferences.php"
										title="Click here">Petroleum</a></li>
									<li><a
										href="http://www.omicsonline.org/dermatology-conferences.php"
										title="Click here">Dermatology</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
		<!-- row -->
		<!-- Latest Research Reports -->
		<div class="bg_white p-tb-20">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-md-9">
						<div class="panel panel-default panel-teal latst_rsch_repts">
							<div class="panel-heading">
								<h3 class="panel-title">Latest Research Reports</h3>
							</div>
							<div class="panel-body">
								<ul class="media-list">
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a title="Editor Note"
													href="http://www.omicsgroup.org/journals/editor-note-2167-0420-1000e124.pdf"
													target="_blank">Editor Note</a>
											</h5>
											<p>
												<small>Bunc V</small><span class="bg-success pull-right"><a
													title="Journal of Women's Health Care"
													href="http://www.omicsgroup.org/journals/ArchiveJWHC/currentissue-womens-health-care-open-access.php"
													class="fr" target="_blank">Journal of Women's Health
														Care</a> </span>
											</p>
										</div>
									</li>
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a
													title="Predictors of Pregnancy Outcome in Antiphospholipid Syndrome: A Review"
													href="http://www.omicsonline.org/open-access/predictors-of-pregnancy-outcome-in-antiphospholipid-syndrome-a-review-2155-6121-1000239.php?aid=79907"
													target="_self">Predictors of Pregnancy Outcome in
													Antiphospholipid Syndrome: A Review</a>
											</h5>
											<p>
												<small>Sara Tabacco, Silvia Salvi, De Carolis Sara,
													Angela Botta, Sergio Ferrazzani, Garufi Cristina, Benedetti
													Panici Pierluigi, Lanzone Antonio and De Carolis Maria Pia</small><span
													class="bg-success pull-right"><a
													title="Journal of Allergy & Therapy"
													href="http://www.omicsonline.org/ArchiveJAT/currentissue-allergy-therapy-open-access.php"
													class="fr" target="_self">Journal of Allergy & Therapy</a>
												</span>
											</p>
										</div>
									</li>
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a
													title="Developing New Organic Nitrates for Treating Hypertension: A Review"
													href="http://www.omicsgroup.org/journals/developing-new-organic-nitrates-for-treating-hypertension-a-review-2167-1095-1000232.php?aid=79856"
													target="_blank">Developing New Organic Nitrates for
													Treating Hypertension: A Review</a>
											</h5>
											<p>
												<small>Suenia K. P. Porpino, Renata A. Travassos,
													Danilo D. A. Gadelha, Camille M. Balarini, Josiane C Cruz,
													Alexsandro F. Santos, Petr&ocirc;nio F. Athayde- Filho,
													Valdir A. Braga and Maria S. Fran&ccedil;a-Silva</small><span
													class="bg-success pull-right"><a
													title="Journal of Hypertension: Open Access"
													href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
													class="fr" target="_blank">Journal of Hypertension:
														Open Access</a> </span>
											</p>
										</div>
									</li>
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a
													title="Diastolic Pulmonary Arterial Pressure as a Prognostic Indicator for Closure of Atrial Septal Defect with Severe Pulmonary Arterial Hypertension"
													href="http://www.omicsgroup.org/journals/diastolic-pulmonary-arterial-pressure-as-a-prognostic-indicator-for-closure-of-atrial-septal-defect-with-severe-pulmonary-arterial-2167-1095-1000231.php?aid=79855"
													target="_blank">Diastolic Pulmonary Arterial Pressure
													as a Prognostic Indicator for Closure of Atrial Septal
													Defect with Severe Pulmonary Arterial Hypertension</a>
											</h5>
											<small><p>Yan Chaowu, Pan Xiangbin, Xu Zhongying,
													Zhang Gejun, Zheng Hong, Jin Jinglin, Li Shiguo, Lv
													Jianhua, Hu Haibo, Song Huijun, Liu Qiong, Wan Junyi, Xu
													Liang, Zhu Zhenhui, Pang Kunjing and Wang Yang</p></small><span
												class="bg-success pull-right"><a
												title="Journal of Hypertension: Open Access"
												href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
												class="fr" target="_blank">Journal of Hypertension: Open
													Access</a> </span>
										</div>
									</li>
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a
													title="Protracted Refractory Pain Post TEVAR: Post Implantation Syndrome?"
													href="http://www.omicsgroup.org/journals/protracted-refractory-pain-post-tevar-post-implantation-syndrome-2167-1095-1000230.php?aid=79853"
													target="_blank">Protracted Refractory Pain Post TEVAR:
													Post Implantation Syndrome?</a>
											</h5>
											<small>Peter Waweru, Hardeep Gill and Chris Abeid</small><span
												class="bg-success pull-right"><a
												title="Journal of Hypertension: Open Access"
												href="http://www.omicsgroup.org/journals/ArchiveJHOA/currentissue-hypertension-open-access.php"
												class="fr" target="_blank">Journal of Hypertension: Open
													Access</a> </span>
										</div>
									</li>
									<li class="media">
										<div class="media-left media-middle">
											<i class="fa fa-file-text fa-3x media-object text-muted"
												aria-hidden="true"></i>
										</div>
										<div class="media-body">
											<h5 class="media-heading">
												<a
													title="A Comparitive Study on Politics in Sathyajith Ray’s Films-Appu Triology, Mahanagar, Jana Aranya, Charulatha and Pathirdwani"
													href="http://www.omicsgroup.org/journals/a-comparitive-study-on-politics-in-sathyajith-rays-filmsappu-triology-mahanagar-jana-aranya-charulatha-and-pathirdwani-2165-7912-1000316.php?aid=79842"
													target="_blank">A Comparitive Study on Politics in
													Sathyajith Ray’s Films-Appu Triology, Mahanagar, Jana
													Aranya, Charulatha and Pathirdwani</a>
											</h5>
											<p>
												<small>Ramis Salam P</small><span
													class="bg-success pull-right"><a
													title="Journal of Mass Communication & Journalism"
													href="http://www.omicsgroup.org/journals/ArchiveJMCJ/currentissue-mass-communication-journalism-open-access.php"
													class="fr" target="_blank">Journal of Mass
														Communication & Journalism</a> </span>
											</p>
										</div>
									</li>
								</ul>
								<a class="btn btn-danger pull-right" title="Read More"
									href="http://www.omicsonline.org/latest-research-reports.php">Read
									More</a>
							</div>
						</div>

					</div>
					<div class="col-xs-12 col-md-3">
						<div class="panel panel-default panel-teal widget_speical">
							<div class="panel-heading">
								<h3 class="panel-title">Quick links</h3>
							</div>
							<div class="panel-footer padding-10">
								<ul style="list-style: none;">
									<!--<li><a title="Highly Viewed Articles" href="http://www.omicsonline.org/pdfs/highly-viewed-articles.pdf">Highly Viewed Articles</a> </li>-->
									<li><a title="Benefits of Publishing"
										href="http://www.omicsonline.org/benefits-of-publishing.php">Benefits
											of Publishing</a></li>
									<li><a title="Peer-Reviewed Journals"
										href="http://www.omicsonline.org/peer-reviewed-journals.php">Peer-Reviewed
											Journals</a></li>
									<li><a title="Advertise with us"
										href="http://www.omicsonline.org/Advertising-With-Us.pdf">Advertise
											with us</a></li>
									<li><a title="Reprints and permissions"
										href="http://www.omicsonline.org/pdfs/OMICS-Group-reprints-order-form.pdf">Reprints
											and permissions</a></li>
									<li><a title="OMICS International white paper"
										href="http://www.omicsonline.org/pdfs/OMICS-Group-whitepaper.pdf">OMICS
											International white paper</a></li>
									<li><a title="Review articles"
										href="http://www.omicsonline.org/review-articles-list.php">Review
											articles</a></li>
									<li><a title="Press Releases"
										href="http://www.omicsonline.org/omics-group-press-releases.php">Press
											Releases</a></li>
									<li><a title="Open Access scientific reports"
										href="http://www.omicsonline.org/scientific-reports.php">Open
											Access scientific reports</a></li>
								</ul>
							</div>
						</div>

						<div class="panel panel-default panel-teal widget_speical">
							<div class="panel-heading">
								<h3 class="panel-title">New Initiatives</h3>
							</div>
							<div class="panel-footer clearfix">

								<div class="vertical_slider" id="scroller">
									<div class="slideshow vertical" data-cycle-fx=carousel
										data-cycle-timeout=1000 data-cycle-next="#next3"
										data-cycle-prev="#prev3" data-cycle-pager="#pager3"
										data-cycle-carousel-visible=2
										data-cycle-carousel-vertical=true
										data-cycle-pause-on-hover="true" data-cycle-slides="> div">
										<div>
											<a href="http://www.esciencecentral.org/ebooks/"
												title="Ebooks"><img src="../assets/icon_ebooks.png"
												alt="Ebooks" width="170" height="65" title="ebooks"></a>
										</div>
										<div>
											<a
												href="http://www.omicsonline.org/international-societies-world-fedarations-scientific-associations.php"
												title="Scientific Alliances"><img
												src="../assets/icon_sc_alliances.png"
												alt="Scientific Alliances" title="Scientific Alliances"
												width="170" height="65"></a>
										</div>
										<div>
											<a href="http://www.scholarscentral.org/"
												title="Scholars Central"><img
												src="../assets/icon_scholar.png" alt="Scholars Central"
												title="Scholars Central" width="170" height="65"></a>
										</div>
										<div>
											<a
												href="http://www.omicsonline.org/open-access/young-scientist-award/"
												title="Young Scientist Awards"><img
												src="../assets/icon_ys_award.png"
												alt="Young Scientist Awards" title="Young Scientist Awards"
												width="170" height="65"></a>
										</div>
									</div>
								</div>
								<div class="vertical_slider_arrow">
									<div class="fa fa-arrow-up" id="next3" title="scroll up"></div>
									<div class="fa fa-arrow-down" id="prev3" title="scroll down"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Latest Research Reports ends -->
		<!-- /.row -->
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
		<div class="scroll-top-wrapper">
			<span class="scroll-top-inner"> <i
				class="fa fa-2x fa-arrow-circle-up"></i>
			</span>
		</div>
	</div>
	<!-- /.container -->
	<!-- srcoll button -->

	<!-- jQuery -->
	<script src="../js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>
	<!--cycle-->
	<script src="../js/jquery.cycle2.min.js" type="text/javascript"></script>
	<script src="../js/jquery.cycle2.carousel.min.js"
		type="text/javascript"></script>
	<script>$.fn.cycle.defaults.autoSelector = '.slideshow';
	</script>
	<!-- slick -->
	<script type="text/javascript"
		src="../js/slick/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="../js/slick/slick.min.js"></script>
	<script type="text/javascript">
		$('#myCarousel').slick({
			dots : true,		
			infinite : true,
			speed : 300,
			slidesToShow : 1,
			adaptiveHeight : true,
			centerMode : true,
			autoplay : true,
			autoplaySpeed : 5000,
			respondTo : 'window'
		});
	</script>

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
		User us = (User) session.getAttribute("user");
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
	<!-- main -->
	<script src="../js/main.js"></script>

	<!-- Script to Activate the Carousel -->
</body>

</html>
