<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="dao.DAO"%>
<%@ page import="model.User"%>
<%@ page import="java.lang.StringBuilder"%>
<%@ page import="java.util.ArrayList"%>
<style>
<!--
td, th {
	font-size: 1.2em;
}
-->
</style>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation"><a
			href="person_journal.jsp">Recent</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass" />
		<c:if test="${myclass == 0}">
			<li role="presentation"><a href="submitManuscript.jsp">Hello
					my Boss</a></li>
		</c:if>
		<c:if test="${myclass == 1}">
			<li role="presentation"><a href="editor_room.jsp">Room</a></li>
		</c:if>
		<c:if test="${myclass == 2}">
			<li role="presentation"><a href="submitManuscript.jsp">Manuscript</a></li>
		</c:if>
		<c:if test="${myclass == 3}">
			<li role="presentation"  class="active"><a href="reviewlist.jsp">ReviewList</a></li>
		</c:if>
	</ul>
	<%
		User us = (User)session.getAttribute("user");
		DAO da = new DAO();
		StringBuilder error = new StringBuilder();
		da.myListReview(us, error);
		pageContext.setAttribute("review", us.listRev);
	%>
	<div class="content">
		<h2>
			<strong style="clear: right; margin-left: 20px; color: #009;">Danh Sách Tạp Chí</strong>
		</h2>
		<div class="table-responsive" style="height: 800px">
			<table class="table table-striped" style="overflow: auto;">
				<thead>
					<tr>
						<th style="display: none">usid</th>
						<th style="display: none">joid</th>
						<th>Ngày Gửi</th>
						<th>Tên Tạp Chí</th>
						<th>Trạng Thái Tạp Chí</th>
						<th>Chuyên Ngành</th>
						<th>Tác Giả</th>						
						<th>Từ Khóa</th>
						<th>Trạng Thái Review</th>
						<th>Ghi Chú</th>
					</tr>
				</thead>
				<tbody>
					<c:set scope="session" var="us" value="${user}"/>
					<c:forEach var="rev" items="${pageScope.review}">
					<c:set var="jo" value="${rev.getJo()}"/>
						<tr onMouseOver="this.className='highlight'"
							onMouseOut="this.className='normal'"
							onclick="">
							<td class="usid">${us.getID()}</td>
							<td class="joid">${jo.getSubmitDate()}</td>
							<td class="submitdate" width="8%">${jo.getSubmitDate()}</td>
							<td class="joName" width="15%">${jo.getName()}</td>
							<td class="joStatus" width="12%">${jo.getjoSttToString()}</td>
							<td class="joSubName" width="15%">${jo.getSubName()}</td>
							<td class="joAuthor" width="13%">${jo.getAuthor()}</td>
							<td class="joKeywd" width="13%">${jo.getKeywd()}</td>
							<td class="revStatus" width="13%">${rev.revSttToString()}</td>
							<td class="revComment" width="13%">${rev.getComment()}</td>
							<td class="" width="7%"><a class="btn btn-danger"
								href="rrj.html?usid=<c:out value="${us.getID()}"/>&joid=<c:out value="${jo.getID()}&tb=review"/>">Xóa</a></td>
							<td class="" width="7%"><a
								class="btn btn-primary updateuser" data-toggle="modal"
								data-target="#myModal" href="#">Cập Nhật</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Cập Nhật Trạng Thái</h4>
			</div>
			<div class="modal-body">
				<form id="signupForm2" action="../jsp/adminupdate"
					method="post" class="form-horizontal">
					<div class="hidden">
						<input type="text" class="form-control" name="idU" 	id="usid">
						<input type="text" class="form-control" name="idjo" id="joid">
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="revStt">Role:
						</label>
						<div class="col-md-8">
							<select class="form-control" name="revStt" id="revStt">
								<option value="0">Vừa Submit. Chưa Xem</option>
								<option value="1">Đang Xem</option>
								<option value="2">Hoàn Thành Đây Là Tạp Chí</option>
								<option value="3">Không Phải Tạp Chí!!!!!</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="revComment">Status:
						</label>
						<div class="col-md-8">
							<textarea name="revComment" rows="10" cols="100" class="form-control" id="revComment"  
								required
								data-validation-required-message="Please enter your question"
								maxlength="1024" style="resize: none"></textarea>
						</div>
						<div class="clearfix"></div>
					</div>

					<input type="submit"
						class="btn btn-warning col-md-3  col-md-offset-5" value="Cập Nhật" />
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-right"
					data-dismiss="modal">Hủy</button>
			</div>
		</div>

	</div>
</div>
<script type="text/javascript" src="../js/tabload.js"></script>
<script>
	$(document).ready(function() {
		var $lista = $('tbody .updateuser');
		$lista.each(function(index, a) {
			a.addEventListener('click', function(e) {
				var tr = this.parentElement.parentNode;
				$("#usid").val(tr.children[0].innerText);
				$("#joid").val(tr.children[1].innerText);
				$("#revStt").val(tr.children[6].innerText);
				$("#revComment").val(tr.children[7].innerText);
			})
		})
	});
</script>

