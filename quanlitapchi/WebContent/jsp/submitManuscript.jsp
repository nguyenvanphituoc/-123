<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
    <script src="../js/jquery.js"></script> 
    <script> 
    $(function(){
      $("#includedContent").load("index.jsp"); 
    });
    </script> 
  </head> 

  <body> 
     <div id="includedContent"></div>
  </body> 
</html>