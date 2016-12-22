<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="../css/main.css" rel="stylesheet">
<!-- Jquery -->
<script src="../js/jquery-3.1.1.min.js"></script>
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
					<li class="home "><a  href="index.jsp" title="Home"> <span
							class="icon"><i class="glyphicon glyphicon-home"
								title="Trang Chủ"></i></span> <span>Trang Chủ</span>
					</a></li>
					<li class="register selected"><a class="" href="register.jsp" title="Đăng Ký"> <span
							class="icon"><i class="fa fa-share-alt" title="Join Us"></i></span>
							<span>Đăng Ký</span>
					</a></li>

					<li class="contact"><a class="" href="contact.jsp" title="Liên Hệ"> <span
							class="icon"><i class="fa fa-phone"></i></span> <span>Liên
								Hệ</span>
					</a></li>

					<li class="login"><a class="" href="signin.jsp" title="Đăng Nhập"> <span
							class="icon "><i class="fa fa-user" title="Đăng Nhập"></i></span>
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
		<script>
			$(function() {
				center()
				$(window).resize(function() {
					center()
				})
				function center() {
					$('div').css({
						left : ($(window).width() - $('div').width()) / 2,
						top : ($(window).height() - $('div').height()) / 2
					})
				}
			})
		</script>
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
						<span style="font-weight: bold;">Registration Page </span><br>
						To register to use the Editorial Manager system, please enter the
						requested information. Required fields have a * next to the label.
						Upon successful registration, you will be sent an e-mail with
						instructions to verify your registration.
					</p>
				</div>
				<div class="col-md-6">
					<form class="form-horizontal" action="register_confirm.jsp"
						method="post" role="form" accept-charset="UTF-8" >
						<% request.setCharacterEncoding("UTF-8"); %>
						<div class="hidden">
							<input type="text"name="first_name"
								value='<%=request.getParameter("first_name") %>' > <input type="text"
								value='<%=request.getParameter("last_name") %>' name="last_name">
							<input type="text" value='<%=request.getParameter("email") %>'
								name="email">
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="user_name">Enter
								preferred user name: <span>*</span>
							</label>
							<div class="col-md-8">
								<input type="text" value="" name="user_name" required
									class="form-control" placeholder="Enter your account">
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group has-feedback">
							<label class="col-md-4 control-label lb" for="user_password">Enter
								your passrword: <span>*</span>
							</label>
							<div class="col-md-8">
								<input type="password" value="" name="user_password" required
									class="form-control" placeholder="Password" id="password">
								<span id="helpBlock" class="help-block">Please enter
									password more than 8 characters</span> <span
									class="glyphicon glyphicon-ok form-control-feedback valid_pass"
									style="color: green"></span> <span
									class="glyphicon glyphicon-remove form-control-feedback in_valid_pass"
									style="color: red"></span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group has-feedback">
							<label class="col-md-4 control-label lb"
								for="user_confirmpassword">Confirm your passrword: <span>*</span>
							</label>
							<div class="col-md-8">
								<input type="password" value="" name="user_confirmpassword"
									required class="form-control" placeholder="Confirm Password"
									id="confirm_password"> <span
									class="glyphicon glyphicon-ok form-control-feedback valid_confirmpass"
									style="color: green"></span> <span
									class="glyphicon glyphicon-remove form-control-feedback in_valid_confirmpass"
									style="color: red"></span>
							</div>
							<span id="message_confirmpass"
								style="margin: auto; padding: auto;"></span>
							<div class="clearfix"></div>
						</div>
						<!-- <div class="form-group">
							<label class="col-md-4 control-label lb" for="country">Country:
								<span>*</span>
							</label>
							<div class="col-md-8">
								<select class="form-control" required name="country">
									<option selected="selected" value="">--Please select--</option>
									<option value="United States">United States</option>
									<option value="United Kingdom">United Kingdom</option>
									<option value="Afghanistan">Afghanistan</option>
									<option value="Albania">Albania</option>
									<option value="Algeria">Algeria</option>
									<option value="American Samoa">American Samoa</option>
									<option value="Andorra">Andorra</option>
									<option value="Angola">Angola</option>
									<option value="Anguilla">Anguilla</option>
									<option value="Antarctica">Antarctica</option>
									<option value="Antigua and Barbuda">Antigua and
										Barbuda</option>
									<option value="Argentina">Argentina</option>
									<option value="Armenia">Armenia</option>
									<option value="Aruba">Aruba</option>
									<option value="Australia">Australia</option>
									<option value="Austria">Austria</option>
									<option value="Azerbaijan">Azerbaijan</option>
									<option value="Bahamas">Bahamas</option>
									<option value="Bahrain">Bahrain</option>
									<option value="Bangladesh">Bangladesh</option>
									<option value="Barbados">Barbados</option>
									<option value="Belarus">Belarus</option>
									<option value="Belgium">Belgium</option>
									<option value="Belize">Belize</option>
									<option value="Benin">Benin</option>
									<option value="Bermuda">Bermuda</option>
									<option value="Bhutan">Bhutan</option>
									<option value="Bolivia">Bolivia</option>
									<option value="Bosnia and Herzegovina">Bosnia and
										Herzegovina</option>
									<option value="Botswana">Botswana</option>
									<option value="Bouvet Island">Bouvet Island</option>
									<option value="Brazil">Brazil</option>
									<option value="British Indian Ocean Territory">British
										Indian Ocean Territory</option>
									<option value="Brunei Darussalam">Brunei Darussalam</option>
									<option value="Bulgaria">Bulgaria</option>
									<option value="Burkina Faso">Burkina Faso</option>
									<option value="Burundi">Burundi</option>
									<option value="Cambodia">Cambodia</option>
									<option value="Cameroon">Cameroon</option>
									<option value="Canada">Canada</option>
									<option value="Canadian Nunavut Territory">Canadian
										Nunavut Territory</option>
									<option value="Cape Verde">Cape Verde</option>
									<option value="Cayman Islands">Cayman Islands</option>
									<option value="Central African Republic">Central
										African Republic</option>
									<option value="Chad">Chad</option>
									<option value="Chile">Chile</option>
									<option value="China">China</option>
									<option value="Christmas Island">Christmas Island</option>
									<option value="Cocos (Keeling Islands)">Cocos (Keeling
										Islands)</option>
									<option value="Colombia">Colombia</option>
									<option value="Comoros">Comoros</option>
									<option value="Congo">Congo</option>
									<option value="Cook Islands">Cook Islands</option>
									<option value="Costa Rica">Costa Rica</option>
									<option value="Cote D'Ivoire (Ivory Coast)">Cote
										D'Ivoire (Ivory Coast)</option>
									<option value="Croatia (Hrvatska)">Croatia (Hrvatska)</option>
									<option value="Cuba">Cuba</option>
									<option value="Cyprus">Cyprus</option>
									<option value="Czech Republic">Czech Republic</option>
									<option value="Denmark">Denmark</option>
									<option value="Djibouti">Djibouti</option>
									<option value="Dominica">Dominica</option>
									<option value="Dominican Republic">Dominican Republic</option>
									<option value="East Timor">East Timor</option>
									<option value="Ecuador">Ecuador</option>
									<option value="Egypt">Egypt</option>
									<option value="El Salvador">El Salvador</option>
									<option value="Equatorial Guinea">Equatorial Guinea</option>
									<option value="Eritrea">Eritrea</option>
									<option value="Estonia">Estonia</option>
									<option value="Ethiopia">Ethiopia</option>
									<option value="Falkland Islands (Malvinas)">Falkland
										Islands (Malvinas)</option>
									<option value="Faroe Islands">Faroe Islands</option>
									<option value="Fiji">Fiji</option>
									<option value="Finland">Finland</option>
									<option value="France">France</option>
									<option value="France, Metropolitan">France,
										Metropolitan</option>
									<option value="French Guiana">French Guiana</option>
									<option value="French Polynesia">French Polynesia</option>
									<option value="French Southern Territories">French
										Southern Territories</option>
									<option value="Gabon">Gabon</option>
									<option value="Gambia">Gambia</option>
									<option value="Georgia">Georgia</option>
									<option value="Germany">Germany</option>
									<option value="Ghana">Ghana</option>
									<option value="Gibraltar">Gibraltar</option>
									<option value="Greece">Greece</option>
									<option value="Greenland">Greenland</option>
									<option value="Grenada">Grenada</option>
									<option value="Guadeloupe">Guadeloupe</option>
									<option value="Guam">Guam</option>
									<option value="Guatemala">Guatemala</option>
									<option value="Guinea">Guinea</option>
									<option value="Guinea-Bissau">Guinea-Bissau</option>
									<option value="Guyana">Guyana</option>
									<option value="Haiti">Haiti</option>
									<option value="Heard and McDonald Islands">Heard and
										McDonald Islands</option>
									<option value="Honduras">Honduras</option>
									<option value="Hong Kong">Hong Kong</option>
									<option value="Hungary">Hungary</option>
									<option value="Iceland">Iceland</option>
									<option value="India">India</option>
									<option value="Indonesia">Indonesia</option>
									<option value="Iran">Iran</option>
									<option value="Iraq">Iraq</option>
									<option value="Ireland">Ireland</option>
									<option value="Israel">Israel</option>
									<option value="Italy">Italy</option>
									<option value="Jamaica">Jamaica</option>
									<option value="Japan">Japan</option>
									<option value="Jordan">Jordan</option>
									<option value="Kazakhstan">Kazakhstan</option>
									<option value="Kenya">Kenya</option>
									<option value="Kiribati">Kiribati</option>
									<option value="Korea (North)">Korea (North)</option>
									<option value="Korea (South)">Korea (South)</option>
									<option value="Kuwait">Kuwait</option>
									<option value="Kyrgyzstan">Kyrgyzstan</option>
									<option value="Laos">Laos</option>
									<option value="Latvia">Latvia</option>
									<option value="Lebanon">Lebanon</option>
									<option value="Lesotho">Lesotho</option>
									<option value="Liberia">Liberia</option>
									<option value="Libya">Libya</option>
									<option value="Liechtenstein">Liechtenstein</option>
									<option value="Lithuania">Lithuania</option>
									<option value="Luxembourg">Luxembourg</option>
									<option value="Macau">Macau</option>
									<option value="Macedonia">Macedonia</option>
									<option value="Madagascar">Madagascar</option>
									<option value="Malawi">Malawi</option>
									<option value="Malaysia">Malaysia</option>
									<option value="Maldives">Maldives</option>
									<option value="Mali">Mali</option>
									<option value="Malta<">Malta</option>
									<option value="Marshall Islands">Marshall Islands</option>
									<option value="Martinique">Martinique</option>
									<option value="Mauritania">Mauritania</option>
									<option value="Mauritius">Mauritius</option>
									<option value="Mayotte">Mayotte</option>
									<option value="Mexico">Mexico</option>
									<option value="Micronesia">Micronesia</option>
									<option value="Moldova">Moldova</option>
									<option value="Monaco">Monaco</option>
									<option value="Mongolia">Mongolia</option>
									<option value="Montserrat">Montserrat</option>
									<option value="Morocco">Morocco</option>
									<option value="Mozambique">Mozambique</option>
									<option value="Myanmar">Myanmar</option>
									<option value="Namibia">Namibia</option>
									<option value="Nauru">Nauru</option>
									<option value="Nepal">Nepal</option>
									<option value="Netherlands">Netherlands</option>
									<option value="Netherlands Antilles">Netherlands
										Antilles</option>
									<option value="New Caledonia">New Caledonia</option>
									<option value="New Zealand">New Zealand</option>
									<option value="Nicaragua">Nicaragua</option>
									<option value="Niger">Niger</option>
									<option value="Nigeria">Nigeria</option>
									<option value="Niue">Niue</option>
									<option value="Norfolk Island">Norfolk Island</option>
									<option value="Northern Mariana Islands">Northern
										Mariana Islands</option>
									<option value="Norway">Norway</option>
									<option value="Oman">Oman</option>
									<option value="Pakistan">Pakistan</option>
									<option value="Palau">Palau</option>
									<option value="Panama">Panama</option>
									<option value="Papua New Guinea">Papua New Guinea</option>
									<option value="Paraguay">Paraguay</option>
									<option value="Peru">Peru</option>
									<option value="Philippines">Philippines</option>
									<option value="Pitcairn">Pitcairn</option>
									<option value="Poland">Poland</option>
									<option value="Portugal">Portugal</option>
									<option value="Qatar">Qatar</option>
									<option value="Reunion">Reunion</option>
									<option value="Romania">Romania</option>
									<option value="Russian Federation">Russian Federation</option>
									<option value="Rwanda">Rwanda</option>
									<option value="S. Georgia and S. Sandwich Isls.">S.
										Georgia and S. Sandwich Isls.</option>
									<option value="Saint Kitts and Nevis">Saint Kitts and
										Nevis</option>
									<option value="Saint Lucia">Saint Lucia</option>
									<option value="Saint Vincent and The Grenadines">Saint
										Vincent and The Grenadines</option>
									<option value="Samoa">Samoa</option>
									<option value="San Marino">San Marino</option>
									<option value="Sao Tome and Principe">Sao Tome and
										Principe</option>
									<option value="Saudi Arabia">Saudi Arabia</option>
									<option value="Senegal">Senegal</option>
									<option value="Seychelles">Seychelles</option>
									<option value="Sierra Leone">Sierra Leone</option>
									<option value="Singapore">Singapore</option>
									<option value="Slovak Republic">Slovak Republic</option>
									<option value="Slovenia">Slovenia</option>
									<option value="Solomon Islands">Solomon Islands</option>
									<option value="Somalia">Somalia</option>
									<option value="South Africa">South Africa</option>
									<option value="Spain">Spain</option>
									<option value="Sri Lanka">Sri Lanka</option>
									<option value="St. Helena">St. Helena</option>
									<option value="St. Pierre and Miquelon">St. Pierre and
										Miquelon</option>
									<option value="Sudan">Sudan</option>
									<option value="Suriname">Suriname</option>
									<option value="Svalbard and Jan Mayen Islands">Svalbard
										and Jan Mayen Islands</option>
									<option value="Swaziland">Swaziland</option>
									<option value="Sweden">Sweden</option>
									<option value="Switzerland">Switzerland</option>
									<option value="Syria">Syria</option>
									<option value="Taiwan">Taiwan</option>
									<option value="Tajikistan">Tajikistan</option>
									<option value="Tanzania">Tanzania</option>
									<option value="Thailand">Thailand</option>
									<option value="Togo">Togo</option>
									<option value="Tokelau">Tokelau</option>
									<option value="Tonga">Tonga</option>
									<option value="Trinidad and Tobago">Trinidad and
										Tobago</option>
									<option value="Tunisia">Tunisia</option>
									<option value="Turkey">Turkey</option>
									<option value="Turkmenistan">Turkmenistan</option>
									<option value="Turks and Caicos Islands">Turks and
										Caicos Islands</option>
									<option value="Tuvalu">Tuvalu</option>
									<option value="US Minor Outlying Islands">US Minor
										Outlying Islands</option>
									<option value="Uganda">Uganda</option>
									<option value="Ukraine">Ukraine</option>
									<option value="United Arab Emirates">United Arab
										Emirates</option>
									<option value="United Kingdom">United Kingdom</option>
									<option value="United States">United States</option>
									<option value="Uruguay">Uruguay</option>
									<option value="Uzbekistan">Uzbekistan</option>
									<option value="Vanuatu">Vanuatu</option>
									<option value="Vatican City State (Holy See)">Vatican
										City State (Holy See)</option>
									<option value="Venezuela">Venezuela</option>
									<option value="Viet Nam">Viet Nam</option>
									<option value="Virgin Islands (British)">Virgin
										Islands (British)</option>
									<option value="Wallis and Futuna Islands">Wallis and
										Futuna Islands</option>
									<option value="Western Sahara">Western Sahara</option>
									<option value="Yemen">Yemen</option>
									<option value="Yugoslavia">Yugoslavia</option>
									<option value="Zaire">Zaire</option>
									<option value="Zambia">Zambia</option>
									<option value="Zimbabwe">Zimbabwe</option>
								</select>

							</div>
							<div class="clearfix"></div>
						</div> -->
						<div class="form-group">
							<label class="col-md-4 control-label lb" for="class">Register
								is for : <span>*</span>
							</label>
							<div class="row col-md-8 radio_group">
								<div class="col-md-3">
									<label class="radio"><input type="radio" name="class"
										value="1" required> Editor </label>
								</div>
								<div class="col-md-3">
									<label class="radio"><input type="radio" name="class"
										value="2"> Author </label>
								</div>
								<div class="col-md-3">
									<label class="radio"><input type="radio" name="class"
										value="3"> Reviewer </label>
								</div>
								<div class="col-md-3">
									<label class="radio"><input type="radio" name="class"
										value="4"> Reader </label>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="row">
							<p class="h6 mess">
								<span class="label-warning">WARNING</span> - The username you
								choose must be unique within the system. If the one you choose
								is already in use, you will be asked for another. Once you have
								filled in the required information, click the button below
							</p>
							<br>
							<div class="clearfix"></div>
						</div>

						<div class="row">
							<div class="btn col-md-3 pull-right">
								<input id="submit_youraccount" class=" btn-default"
									type="submit" title="continue" value="Tiếp tục >>">
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
	<script type="text/javascript">
		/******************************************register_valid_pass******************************************/
		//Problem: Hints are shown even when form is valid
		//Solution: Hide and show them at appropriate times
		var $password = $("#password");
		var $confirmPassword = $("#confirm_password");
	
		$password.nextAll('.glyphicon').hide();
		$password.nextAll('#helpBlock').show();
		$confirmPassword.nextAll('.glyphicon').hide();
	
		function isPasswordValid() {
			return $password.val().length > 8;
		}
	
		function arePasswordsMatching() {
			return ($password.val() != null && $password.val() != '') && ($password.val() === $confirmPassword.val());
		}
	
		function canSubmit() {
			return isPasswordValid() && arePasswordsMatching();
		}
	
		function passwordEvent() {
			//Find out if password is valid  
			if (isPasswordValid()) {
				//show hint if valid
				$password.closest('.form-group').removeClass('has-error');
				$password.closest('.form-group').addClass('has-success');
				$password.nextAll('.in_valid_pass').hide();
				$password.nextAll('.valid_pass').show();
				$password.nextAll('#helpBlock').hide();
			} else {
				//else hide hint
				$password.closest('.form-group').removeClass('has-success');
				$password.closest('.form-group').addClass('has-error');
				$password.nextAll('.valid_pass').hide();
				$password.nextAll('.in_valid_pass').show();
				$password.nextAll('#helpBlock').show();
			}
		}
	
		function confirmPasswordEvent() {
			//Find out if password and confirmation match
			if (arePasswordsMatching()) {
				//Hide hint if match
				$confirmPassword.closest('.form-group').removeClass('has-error');
				$confirmPassword.closest('.form-group').addClass('has-success');
				$confirmPassword.nextAll('.in_valid_confirmpass').hide();
				$confirmPassword.nextAll('.valid_confirmpass').show();
			} else {
				//else show hint 
				$confirmPassword.closest('.form-group').removeClass('has-success');
				$confirmPassword.closest('.form-group').addClass('has-error');
				$confirmPassword.nextAll('.valid_confirmpass').hide();
				$confirmPassword.nextAll('.in_valid_confirmpass').show();
			}
		}
	
		function enableSubmitEvent() {
			$("#submit_youraccount").prop("disabled", !canSubmit());
		}
		//When event happens on password input
		$password.focus(passwordEvent).keyup(passwordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);
	
		//When event happens on confirmation input
		$confirmPassword.focus(confirmPasswordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);
	
		enableSubmitEvent();
	</script>
	<script type="text/javascript" src="../js/main.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>

</body>

</html>
