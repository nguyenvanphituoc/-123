<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class="active"><a
			href="person_homepage.jsp">Profile</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass" />
		<c:if test="${myclass == 0}">
			<li role="presentation"><a href="manageruser.jsp">Users</a></li>
		</c:if>
	</ul>
	<div class="content">
		<form class="form" id="form_information">
			<div class="panel panel-info panel_1">
				<div class="panel-heading">
					<h3 class="panel-title">Information</h3>
				</div>
				<div class="panel-body">
					<div class="col-md-4">
						<div class="form-group">
							<img alt="" src="" width="128px" height="128px" border="1px"
								name="img"> <input type="file"
								class="sr-only  form-control" id="openImg">
							<button type="button" onclick='$("#openImg").click()'
								class="pull-right" name="img" disabled="disabled" id="browsePic">Browse</button>
						</div>
					</div>
					<div class="col-md-6" id="information">
						<label class="h5">Registe Date: <span class="text-left">${sessionScope.user.getID() }</span></label>

						<div class="form-group">
							<label class="h5 title" name="firstname">First Name: <span
								stt="none" class="text-left">${sessionScope.user.getuFirstname()}</span>
								<input type="text" stt="hidded" class="form-control"
								name="firstname">
							</label>

						</div>
						<div class="form-group">
							<label class="h5 title" name="lastname">Last Name: <span
								stt="none" class="text-left">${sessionScope.user.getuLastname()}</span>
								<input type="text" stt="hidded" class="form-control"
								name="firstname" required="required"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="age">Age: <span stt="none"
								class="text-left">21</span> <input type="number" stt="hidded"
								class="form-control" name="age" min="12" max="55" step="1"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="gender">Gender:<span
								stt="none" class="text-left">Nam</span> <input type="text"
								stt="hidded" class="form-control" name="gender"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="email">Email: <span
								stt="none" class="text-left">${sessionScope.user.getuEmail()}</span>
								<input type="email" stt="hidded" class="form-control"
								name="email" required="required"></label>
						</div>

					</div>
					<div class="btn-group btn-group-xs col-md-2" role="group">
						<button type="button" class="btn-info btnEdit ">
							<span class="glyphicon glyphicon-pencil">Edit</span>
						</button>
						<button type="button" class="btn-info btnCancel">
							<span class="glyphicon glyphicon-pencil">Cancel</span>
						</button>
					</div>
				</div>
			</div>
			<div class="panel panel-info panel_2">
				<div class="panel-heading">
					<h3 class="panel-title">Link Reference</h3>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><a href="#">Facebook</a></li>
						<li class="list-group-item"><a href="#">Twitter</a></li>
					</ul>
					<button type="button" class="btn-default btn btnPlus">
						<span class="glyphicon glyphicon-plus-sign"></span>
					</button>
				</div>
			</div>
			<div class="panel panel-info panel_3">
				<div class="panel-heading">
					<h3 class="panel-title">Description</h3>
				</div>
				<div class="panel-body">
					<textarea rows="10" cols="100" maxlength="999"
						style="resize: none; height: auto; width: 100%;"
						disabled="disabled">
						<c:choose>
							<c:when test="${sessionScope.user.getuClass() == 1}">
								Biên Tập Viên
							</c:when>
							<c:when test="${sessionScope.user.getuClass() == 2}">
								Tác Giả
							</c:when>
							<c:when test="${sessionScope.user.getuClass() == 3}">
								Nhà Phản Biện
							</c:when>
							<c:when test="${sessionScope.user.getuClass() == 1}">
								Đọc Giả
							</c:when>
							<c:otherwise>
								My Boss ^^
							</c:otherwise>
						</c:choose>
						</textarea>
					<button type="button" class="btn-default btn btnEdit"
						style="margin-left: 90% !important">
						<span class="glyphicon glyphicon-edit"></span>
					</button>
					<button type="button" class="btn-default btn btnCancel"
						style="margin-left: 90% !important; display: none;">
						<span class="glyphicon glyphicon-remove-sign"></span>
					</button>

				</div>
			</div>
			<button type="submit" class="btn-default btn btnSubmit panel-footer">
				<span class="glyphicon glyphicon-floppy-save">Save Changes</span>
			</button>
		</form>
	</div>
</div>
<script type="text/javascript" src="../js/tabload.js"></script>

<script>	/******************************************User_homepage************************************************************/
	var btnEdit = $('.btnEdit');
	var btnCancel = $('.btnCancel');
	var btnSave = $('.btnSave');
	var btnSubmit = $('.btnSubmit');
	var $form = $('#form_information');
	/*function checkValid() {
		// For each country, defines the pattern that the ZIP has to follow
		var emailCons = '/^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i';
		var AgeCons = '/^[0-9]+$/'
		// Read the country id
		var country = document.getElementById("Country").value;

		// Get the NPA field
		var ZIPField = document.getElementById("ZIP");

		// Build the constraint checker
		var constraint = new RegExp(constraints[country][0], "");
		console.log(constraint);


		// Check it!
		if (constraint.test(ZIPField.value)) {
			// The ZIP follows the constraint, we use the ConstraintAPI to tell it
			ZIPField.setCustomValidity("");
		}
		else {
			// The ZIP doesn't follow the constraint, we use the ConstraintAPI to
			// give a message about the format required for this country
			ZIPField.setCustomValidity(constraints[country][1]);
		}
	}*/
	btnEdit.on('click', function() {
		// ẩn hiện btn;
		$(this).siblings('button').show();
		$(this).hide();
		btnSubmit.attr('disabled', 'disabled');
		// đổi label thành input type
		var panel_1 = $(this).closest('.panel_1');
		if (panel_1.hasClass('panel_1')) {
			$('#browsePic').removeAttr('disabled');
			// lấy information
			var $inform = $('#information').find('.title');
			$inform.each(function(index, element) {
				// element == this
				// tạo một input element
				var label = $inform[index];
				var title = label.getAttribute('name');
				var span = label.getElementsByTagName('span');
				var input = label.getElementsByTagName('input');
				input[0].value = span[0].innerText;
				span[0].setAttribute('stt', 'hidded');
				input[0].setAttribute('stt', 'none');
			});
		} else {
			var panel_3 = $(this).closest('.panel_3');
			if (panel_3.hasClass('panel_3')) {
				var textarea = panel_3.find('textarea');
				textarea.removeAttr('disabled')
			}
		}

	});
	btnCancel.on('click', function() {

		// ẩn hiện btn
		btnSubmit.removeAttr('disabled', 'disabled');
		$(this).siblings('.btnEdit').show();
		$(this).hide();
		// đổi lại label thành input nếu là panel_1
		var panel_1 = $(this).closest('.panel_1');
		if (panel_1.hasClass('panel_1')) {
			$('#browsePic').attr('disabled', 'disabled');
			// lấy information
			var $inform = $('#information').find('.title');
			$inform.each(function(index, element) {
				// element == this
				// tạo một input element
				var label = $inform[index];
				var title = label.getAttribute('name');
				var span = label.getElementsByTagName('span');
				var input = label.getElementsByTagName('input');
				span[0].innerText = input[0].value;
				span[0].setAttribute('stt', 'none');
				input[0].setAttribute('stt', 'hidded');
			});
		} else {
			// mở text area ra nếu là panel_3
			var panel_3 = $(this).closest('.panel_3');
			if (panel_3.hasClass('panel_3')) {
				var textarea = panel_3.find('textarea');
				textarea.attr('disabled', 'disabled');
			}
		}

	});
	/******************************************User_Save**************************************************************/
	$('.btnSave').click(function() {});
</script>