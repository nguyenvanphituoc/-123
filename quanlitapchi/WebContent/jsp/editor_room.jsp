<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="../css/manager_task.css" rel="stylesheet"
	type="text/css">
<style>
#text_editor, #task_room, #member_room {
	top: 0;
	position: fixed;
	z-index: 10000000 !important;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	display: none;
	background-color: rgba(0, 0, 0, 0.3);
}
/*Text editor*/
@media ( min-width : 1200px) {
	.overplay_texteditor {
		width: 100%;
	}
}
/*Task room*/
#manager_task, #manager_member {
	width: 40%;
	background-color: white;
	margin: 5% auto;
	position: inherit;
	z-index: 100;
	left: 0;
	right: 0;
}

#manager_task>ul, #manager_member>ul {
	height: 180px;
	width: 450px;
	margin: 0;
  padding: 0;
	overflow-Y: scroll;
}

#manager_task li, #manager_member li {
	display: inline-block;
}
#manager_task li *, #manager_member li *{
float:left;
}
#manager_task p>button, #manager_member p>buton {
 outline: none;
	margin: 0 auto;
	background: none;
  border: 0px;
  color: #888;
  font-size: 15px;
  width: 60px;
  margin: 10px 0 0;
  font-family: Lato, sans-serif;
  cursor: pointer;
}
#manager_task p>button:hover {
  color: #333;
}
#manager_task li>input[type=checkbox], #manager_member li>input[type=checkbox]
	{
	 outline: none;
	background-color: black;
	width: auto;
	height: auto;
}

</style>

<!-- jQuery -->
<script src="../js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../js/bootstrap.min.js"></script>
<div id="text_editor">
	<main>
	<form data-sample="1" action="./savetextarea.php" method="post"
		data-sample-short="" class="">
		<textarea cols="80" id="myeditor" name="myeditor" rows="10"
			style="visibility: hidden; display: none;">	
				</textarea>
		<p>
			<input type="submit" value="Submit">
		</p>
	</form>
	</main>
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
			<button id="memberAddButton">Add</button>
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
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class=""><a href="person_journal.jsp">Recent</a></li>
		<c:set scope="session" value="${user.uClass}" var="myclass"></c:set>
		<c:if test="${myclass == 0}">
			<li role="presentation"><a href="submitManuscript.jsp">Hello
					my Boss</a></li>
		</c:if>
		<c:if test="${myclass == 1}">
			<li role="presentation" class="active"><a href="editor_room.jsp">Room</a></li>
		</c:if>
		<c:if test="${myclass == 2}">
			<li role="presentation"><a href="submitManuscript.jsp">Manuscript</a></li>
		</c:if>
		<c:if test="${myclass == 3}">
			<li role="presentation"><a href="submitManuscript.jsp">ReviewList</a></li>
		</c:if>
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
					<a>Global Journal bla blabl blabalab kjgdfljgdf</a><br>
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
<script type="text/javascript" src="../js/tabload.js"></script>
<!-- texteditor -->
<script src="texteditor/ckeditor.js"></script>
<script src="texteditor/sample.js"></script>
<script type="text/javascript">
	/**********************************************text area ckeditor replace*************************************************/
	CKEDITOR.replace('myeditor');
</script>
<script>
	//initSample();	
</script>

<!-- manager_task  -->
<script type="text/javascript" src="../js/manager_task.js"></script>
<script type="text/javascript">
	/*********************************************Btn open journal***********************************************************/
	var $openJournal = $('#openjournal');
	var $text_editor = $('#text_editor');
	var $maximaize;
	/*open*/
	$openJournal.click(function() {
		$text_editor.toggle();
		$text_editor.css("width", $(window).width());
		/*Maximize*/
		var editor = CKEDITOR.instances["myeditor"];
		editor.execCommand('maximize');
	//$editor_room.toggle();
	});
	/*close*/
	$text_editor.on('click', function(e) {
		var isNode = false;
		var node = e.target;
		while (node != document.body) {
			if (node.tagName === 'MAIN') {
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
	});</script>
