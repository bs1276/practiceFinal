<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<c:import url="/WEB-INF/views/header.jsp" />
<head>
	<title>Home</title>
	<script type="text/javascript" src="/testSpring2/resources/js/jquery-3.2.1.min.js"></script>
	<script>
		$(function(){
			$("#testBtn").click(function(){
				$.ajax({
					url:"chkId.do",
					type:"get",
					data:{id : "testtest"},
					success:function(data){
						console.log(data);
					},error:function(e){
						console.log(e);
					}
				});
			});
		});
	</script>
</head>
<body>
<br>
	<button id="testBtn">test</button>
<c:import url="footer.html" />
</body>
</html>
