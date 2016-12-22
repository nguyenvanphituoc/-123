<%@page import="dbprovider.DBConnection"%>
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
		<li role="presentation"><a href="person_homepage.jsp">Profile</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass" />
		<c:if test="${myclass == 0}">
			<li role="presentation" class="active"><a href="manageruser.jsp">Users</a></li>
		</c:if>
	</ul>
	<%!String Role(int i) {
		String role = "";
		switch (i) {
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
		}
		return role;
	}

	String Active(int i) {
		String act = "";
		if (i != 0)
			act = "Actived";
		else
			act = "Blocked";
		return act;
	}%>
	<%
		request.setCharacterEncoding("UTF-8");
		ArrayList<User> list = new ArrayList<User>();
		DAO da = new DAO();
		StringBuilder error = new StringBuilder();
		list = da.managerAccount(error);
		pageContext.setAttribute("listuser", list);
	%>
	<div class="content">
		<h2>
			<strong style="clear: right; margin-left: 20px; color: #009;">Danh
				Sách Tài Khoản</strong>
		</h2>
		<div class="table-responsive" style="height: 800px">
			<table class="table table-striped" style="overflow: auto;">
				<thead>
					<tr>
						<th>Ngày Ghi Danh</th>
						<th>Họ</th>
						<th>Tên</th>
						<th>Email</th>
						<th>Tên Đăng Nhập</th>
						<th>Mật Khầu</th>
						<th>Quyền</th>
						<th>Trạng Thái</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="us" items="${pageScope.listuser}">
						<tr onMouseOver="this.className='highlight'"
							onMouseOut="this.className='normal'"
							onclick="">
							<td class="id" width="8%">${us.getID()}</td>
							<td class="firstname" width="15%">${us.getuFirstname()}</td>
							<td class="lastname" width="12%">${us.getuLastname()}</td>
							<td class="email" width="15%">${us.getuEmail()}</td>
							<td class="username" width="13%">${us.getUsername()}</td>
							<td class="passwd" width="13%">${us.getPassword()}</td>
							<fmt:formatNumber var="i" value="${us.getuClass()}"></fmt:formatNumber>
							<td class="role" width="5%">${i}</td>
							<c:set var="act" value="${us.getuActive()}"></c:set>
							<td class="act" width="5%">${act}</td>
							<td class="" width="7%"><a class="btn btn-danger"
								href="deleteuser.html?id=<c:out value="${us.getID()}"/>&tb=user&email=<c:out value="${us.getuEmail() }"/>">Xóa</a></td>
							<td class="" width="7%"><a
								class="btn btn-primary updateuser" data-toggle="modal"
								data-target="#myModalmanageruser" href="#">Cập Nhật</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- Modal -->
<div id="myModalmanageruser" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Cập Nhật User</h4>
			</div>
			<div class="modal-body">
				<form id="signupForm2" action="../jsp/adminupdate"
					method="post" class="form-horizontal">
					<div class="hidden">
						<input type="text" class="form-control" name="idU" id="id">
						<input type="text" class="form-control" name="username"
							id="username">
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="firstname">First
							Name: </label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="firstname"
								id="firstname">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="lastname">Family/
							Last Name: </label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="lastname"
								id="lastname">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="passwd">Password:
						</label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="passwd" id="passwd">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="role">Role:
						</label>
						<div class="col-md-8">
							<select class="form-control" name="role" id="role">
								<option value="1">Biên Tập Viên</option>
								<option value="2">Tác Giả</option>
								<option value="3">Nhà Phản Biện</option>
								<option value="4">Đọc Giả</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label lb" for="stt">Status:
						</label>
						<div class="col-md-8">
							<select class="form-control" name="stt" id="stt">
								<option value="1">Hoạt Động</option>
								<option value="0">Khóa Tài Khoản</option>
							</select>
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
				$("#id").val(tr.children[0].innerText);
				$("#username").val(tr.children[4].innerText);
				$("#firstname").val(tr.children[1].innerText);
				$("#lastname").val(tr.children[2].innerText);
				$("#email").val(tr.children[3].innerText);
				$("#passwd").val(tr.children[5].innerText);
				$("#role").val(tr.children[6].innerText);
				$("#stt").val(tr.children[7].innerText);
			})
		})
	});
</script>
