<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class="active"><a
			href="person_homepage.jsp">PROFILE</a></li>
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
						<label class="h5">Id: <span class="text-left">Id</span></label>

						<div class="form-group">
							<label class="h5 title" name="firstname">First Name: <span
								stt="none" class="text-left">First Name</span> <input
								type="text" stt="hidded" class="form-control" name="firstname">
							</label>

						</div>
						<div class="form-group">
							<label class="h5 title" name="lastname">Last Name: <span
								stt="none" class="text-left">Last Name</span> <input type="text"
								stt="hidded" class="form-control" name="firstname"
								required="required"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="age">Age: <span stt="none"
								class="text-left">Age</span> <input type="number" stt="hidded"
								class="form-control" name="age" min="12" max="55" step="1"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="gender">Gender:<span
								stt="none" class="text-left">Gender</span> <input type="text"
								stt="hidded" class="form-control" name="gender"></label>
						</div>
						<div class="form-group">
							<label class="h5 title" name="email">Email: <span
								stt="none" class="text-left">My mail</span> <input type="email"
								stt="hidded" class="form-control" name="email"
								required="required"></label>
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
						disabled="disabled"></textarea>
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
<script type="text/javascript" src="../js/tabload.js">
<!--
	
//-->
</script>