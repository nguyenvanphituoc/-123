<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="vi">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		if (us == null || (us.getUsername() == null) || (us.getUsername() == "")) {
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
</body>
</html>