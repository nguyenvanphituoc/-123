<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="text_editor">
	<div id="main" class="container overplay_texteditor">
		<div>
			<input id="fileupload" type="file" name="files[]" data-url=""
				multiple>
		</div>
		<!-- -->
		<main>
		<div class="adjoined-bottom">
			<div class="grid-container">
				<div class="grid-width-100">
					<div id="editor">
						<h1>Hello world!</h1>
						<p>
							I'm an instance of <a href="http://ckeditor.com">CKEditor</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
</div>
<div id="task_room">
	<div class="container" id="manager_task">
		<p>
			<label for="new-task">Add Item</label><input id="new-task"
				type="text">
			<button id="addButton">Add</button>
		</p>

		<h3>Todo</h3>
		<ul id="incomplete-tasks">
			<li><input type="checkbox"><label>Pay Bills</label><input
				type="text">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button></li>
			<li class=""><input type="checkbox"><label>Go
					Shopping</label><input type="text" value="Go Shopping">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button></li>

		</ul>

		<h3>Completed</h3>
		<ul id="completed-tasks">
			<li><input type="checkbox" checked><label>See
					the Doctor</label><input type="text">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button></li>
		</ul>
	</div>
</div>
<div id="member_room">
	<div class="container" id="manager_member">
		<form class="form-horizontal pull-right" action="#"
			id="memeber-search-form" role="search">
			<div class="form-group">
				<div class="col-sm-10">
					<div class="input-group">
						<input type="text" placeholder="Search.." id="keyword"
							name="keyword" pattern=".{4,40}" required
							title="4 to 40 characters" autocomplete="off" class=""> <span
							class="input-group-btn glyphicon glyphicon-search"> <input
							type="submit" name="search" class="btn btn-info  sr-only">
						</span>
					</div>
				</div>
			</div>
			<div id="suggestions_holder" class="suggestions"
				style="display: none;"></div>
		</form>
		<p>
			<label for="new-member">Add Item</label><input id="new-member"
				type="text">
			<button id="addButton">Add</button>
		</p>
		<h3>Todo</h3>
		<ul id="visible-memebr">
			<li><label>Pay Bills</label><input type="text">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button></li>
			<li><label>Go Shopping</label><input type="text"
				value="Go Shopping">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button></li>

		</ul>
	</div>
</div>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation"><a href="editor_journal.jsp">Recent</a></li>
		<li role="presentation" class="active"><a href="editor_room.jsp">Room</a></li>
	</ul>
	<!-- room edit -->
	<div class="content">
		<div class="col-md-3 col-sm-3 div-left">
			<div class="room-options">
				<a href="#" title="New Room">New</a><b>|</b><a href="#"
					class="glyphicon glyphicon-refresh" title="Refresh"></a>
			</div>
			<div class="room-content">
				<div class="room-name">
					<a>Global Journal bla blabl blabalab ldflkgjdfk ljgdfkljgdf
						kjgdfljgdf</a><br>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-sm-6 div-center">
			<div id="wrapper">
				<div id="menu">
					<p class="ps_m_welcome">
						Welcome, <b></b>
					</p>
					<p class="ps_m_logout">
						<a id="exit" href="#">Room#</a>
					</p>
					<div style="clear: both"></div>
				</div>

				<div id="chatbox"></div>
				<form class="form form-inline" name="message" action="">
					<div class="form-group">
						<input class="form-control" name="usermsg" type="text"
							id="usermsg" size="63" />
					</div>
					<input class="form-control btn btn-default" name="submitmsg"
						type="submit" id="submitmsg" value="Send" />
				</form>
			</div>
		</div>
		<div class="col-md-2 col-sm-2 div-right">
			<div class="h4 membership">
				Membership
				<div id="employeeList">
					<ul class="bulleted  list-group">
						<li class="in list-group-item"><a href="#">Name#</a></li>
						<li class="in list-group-item"><a href="#">Name#</a></li>
						<li class="in list-group-item"><a href="#">Name#</a></li>
						<li class="in list-group-item"><a href="#">Name#</a></li>
					</ul>
				</div>
			</div>
			<div class="btn-group-vertical" role="group">
				<button class="btn btn-default" id="openmember">Manager
					Member</button>
				<button class="btn btn-default" id="opentask">Manager Task</button>
				<button class="btn btn-default" id="openjournal">Open
					Journal</button>
			</div>
		</div>
	</div>

</div>
	<script src="../js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- jquery -->
	<script src="../js/jquery-3.1.1.min.js"></script>
	<!-- texteditor -->
	<script src="texteditor/ckeditor.js"></script>
	<script src="texteditor/sample.js"></script>
	<script>
		initSample();
	</script>
	<!-- manager_task  -->
	<script type="text/javascript" src="../js/manager_task.js"></script>
<script type="text/javascript">
	/*********************************************Btn open journal***********************************************************/
	var $openJournal = $('#openjournal');
	var $main = $('#main');
	var $text_editor = $('#text_editor');
	var $maximaize;
	/*open*/
	$openJournal.click(function() {
		$text_editor.toggle();
		$text_editor.css("width", $(window).width());
		/*Maximize*/
		$maximaize = $('#cke_85');
		$maximaize.unbind('click');
		$maximaize.click(function(e) {
			e.preventDefault();
			console.log('that is cke_85');
		});
	//$editor_room.toggle();
	});
	/*close*/
	$text_editor.on('click', function(e) {
		var isNode = false;
		var node = e.target;
		while (node != document.body) {
			if (node.id === 'main') {
				isNode = true;
				break;
			}
			node = node.parentNode;
		}
		if (!isNode) {
			$text_editor.toggle();
		} else {
			console.log('Display text_editor main');
		}
	});
	/*********************************************Btn manager task*********************************************************/
	var $opentask = $('#opentask');
	var $manager_task = $('#manager_task');
	var $task_room = $('#task_room');
	/*open*/
	$opentask.click(function() {
		$task_room.toggle();
		
	//$editor_room.toggle();
	});
	/*close*/
	$task_room.on('click', function(e) {
		var isNode = false;
		var node = e.target;
		while (node != document.body) {
			if (node.id === 'manager_task') {
				isNode = true;
				break;
			}
			node = node.parentNode;
		}
		if (!isNode) {
			$task_room.toggle();
		} else {
			console.log('Display task_room manager_task');
		}
	});
	/*********************************************Btn manager member******************************************************/
	var $openmember = $('#openmember');
	var $manager_member = $('#manager_member');
	var $member_room = $('#member_room');
	/*open*/
	$openmember.click(function() {
		$member_room.toggle();
	//$editor_room.toggle();
	});
	/*close*/
	$member_room.on('click', function(e) {
		var isNode = false;
		var node = e.target;
		while (node != document.body) {
			if (node.id === 'manager_member') {
				isNode = true;
				break;
			}
			node = node.parentNode;
		}
		if (!isNode) {
			$member_room.toggle();
		} else {
			console.log('Display member_room manager_member');
		}
	});
</script>

<script type="text/javascript" src="../js/tabload.js"></script>