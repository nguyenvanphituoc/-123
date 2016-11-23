<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="inner-center">
	<ul class="nav nav-tabs" id="tab">
		<li role="presentation" class="active"><a>PERSON1</a></li>
		<li role="presentation"><a>PERSON2</a></li>
		<li role="presentation"><a>PERSON3</a></li>
		<li><button class="glyphicon glyphicon-plus-sign btn btn-default"></button></li>
	</ul>
	<div class="content">
		<div id="wrapper">
			<div id="menu">
				<p class="ps_m_welcome">
					Welcome, <b></b>
				</p>
				<p class="ps_m_logout">
					<a id="exit" href="#">Exit Chat</a>
				</p>
				<div style="clear: both"></div>
			</div>

			<div id="chatbox"></div>
			<form class="form form-inline" name="message" action="">
				<div class="form-group">
					<input class="form-control" name="usermsg" type="text" id="usermsg"
						size="63" />
				</div>
				<input class="form-control btn btn-default" name="submitmsg"
					type="submit" id="submitmsg" value="Send" />
			</form>
		</div>
	</div>
</div>
<script type="text/javascript" src="../js/tabload.js">
<!--
	
//-->
</script>