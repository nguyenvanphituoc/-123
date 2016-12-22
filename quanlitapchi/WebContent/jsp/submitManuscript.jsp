<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dao.DAO"%>
<%@ page import="model.Subject"%>
<%@ page import="java.lang.StringBuilder"%>
<%@ page import="java.util.ArrayList"%>
<style>
<!--
.form_content {
	font-size: 1.5em;
	color: white;
}
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
-->
</style>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class=""><a href="person_journal.jsp">Recent</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass"></c:set>
		<c:if test="${myclass == 0}">
			<li role="presentation"><a href="submitManuscript.jsp">Hello
					my Boss</a></li>
		</c:if>
		<c:if test="${myclass == 1}">
			<li role="presentation"><a href="editor_room.jsp">Room</a></li>
		</c:if>
		<c:if test="${myclass == 2}">
			<li role="presentation" class="active"><a
				href="submitManuscript.jsp">Manuscript</a></li>
		</c:if>
		<c:if test="${myclass == 3}">
			<li role="presentation"><a href="submitManuscript.jsp">ReviewList</a></li>
		</c:if>
	</ul>
	<div class="content">
		<%
			ArrayList<Subject> list = new ArrayList<Subject>();
			DAO da = new DAO();
			StringBuilder error = new StringBuilder();
			list = da.searchSubject(error);
		%>
		<div class="row">
			<div class="col-md-10 col-md-offset-1 form_content row">
				<div class="col-md-12">
					<h3 class="contact_form_header">submit journal munuscript</h3>
				</div>
				<div class="clearfix"></div>
				<%
					if (error != null || error.toString().equals("")) {
				%>
				<div class="col-md-12 contact_form_noti">
					<p><%=error%>
					</p>
				</div>
				<%
					}
				%>
				<form class="form form-horizontal contact_form" id="contactForm"
					action="uploadfile" method="post" enctype="multipart/form-data" name="myform">
					<%
							request.setCharacterEncoding("UTF-8");
					%>
					<div class="form-group">
						<label class="col-md-3 control-label">Select journal
							subject:*</label>
						<div class="col-md-7">
							<select class="form-control" required name="subject">
								<option selected="selected" value="">--Please select--</option>
								<%
									for (Subject subi : list) {
								%>
								<option value="<%=subi.getID()%>"><%=subi.getName() %></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Full Name Author:*</label>
						<div class="col-md-7">
							<input type="text" class="form-control" id="name" required
								data-validation-required-message="Please enter your name."
								name="fullname">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Journal title:*</label>
						<div class=" col-md-7">
							<input type="text" class="form-control" required
								data-validation-required-message="Please enter your email address."
								name="joname">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Keyword*:</label>
						<div class=" col-md-7">
							<ul style="list-style: none; font-size: 1.8em !important">
								<li><input type="text" class="form-control" required
									data-validation-required-message="Please enter keywd."
									name="keywd1"></li>
								<li><input type="text" class="form-control"
									data-validation-required-message="Please enter keywd."
									name="keywd2"></li>
								<li><input type="text" class="form-control"
									data-validation-required-message="Please enter keywd."
									name="keywd3"></li>
								<li><input type="text" class="form-control"
									data-validation-required-message="Please enter keywd."
									name="keywd4"></li>
								<li><input type="text" class="form-control"
									data-validation-required-message="Please enter keywd."
									name="keywd5"></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" for="desc">Description:*</label>
						<div class=" col-md-7">
							<textarea name="desc" rows="10" cols="100" class="form-control" id="question"  
								required
								data-validation-required-message="Please enter your question"
								maxlength="1024" style="resize: none"></textarea>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Attach*:</label>
						<div class=" col-md-7">
							<input type="file" name="file" class="file_browse"
								title="link file" required>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- 	<div class="form-group">
						<label class="col-md-3 control-label">Anti spam code:*</label>
						<div class=" col-md-7">
							<input type="text" name="spamcode"
								class="spamcode_input form-control" title="spam code" required
								name="validcode">
							<div class="row" style="margin: auto 0px;">
								<input type="image" name="spamcode" class="spamcode_img"
									title="image" disabled="disabled">
								<button type="reset" name="spamcode" class="spamcode_btnReset">
									<span class="glyphicon glyphicon-refresh"></span>
								</button>
							</div>
						</div>
						<div class="clearfix"></div>
					</div> -->
					<!-- For success/fail messages -->
					<div class="form-group">
						<button type="submit"
							class="btn btn-primary pull-right contact_btn" onclick="submitform()">Send
							Question</button>
					</div>
				</form>

			</div>
		</div>
		<!-- /.row -->

	</div>
</div>
<div class="afterclicksubmit" id="afterclicksubmit" style="display: none;">
		<div class="loader ">Vui Lòng Chờ Đợi...</div>
</div>
<script type="text/javascript" src="../js/tabload.js"></script>
<script type="text/javascript">
	$(window).onunload = function() {
		alert("unload event detected!");
	}
	function submitform() {
		if (document.myform.onsubmit &&
			!document.myform.onsubmit()) {
			return;
		}
		var $input = document.getElementsByTagName('input');
		var isValid = true;
		for(var i = 0; i < $input.length; i++){
			var inp = $input[i];
			isValid = isValid & inp.validity.valid;
		}
		if(isValid === 1){
			var div = document.getElementById('afterclicksubmit');
			div.style["display"] = "inline";
			document.myform.submit();
		}
		else
			alert("Sorry please check again. Invalid form :(")
	}
</script>

