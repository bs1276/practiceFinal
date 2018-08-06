<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function noticeDetail(no){
		location.href="noticeDetail.do?no=" + no;
	}

</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			
		</tr>
		<c:forEach items="${list }" var="notice">
			<tr onclick="noticeDetail(${notice.no});">
				<td>${notice.no }</td>
				<td>${notice.title }</td>
				<td>${notice.writer }</td>
				<td>${notice.nDate }</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<button onclick="javascript:location.href='noticeInsertForm.do';">작성하기</button>
</body>
</html>