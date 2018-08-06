<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style>
	.outer{
		width:800px;
		height:1000px;
		background:black;
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	
	table {
		border:1px solid white;
	}

	.tableArea {
		width:450px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<script>
function moveModify(){
	location.href="noticeUpdateForm.do?no=${notice.no}";
}
function moveList(){
	location.href="noticeList.do";
}


</script>
</head>
<body>
	<c:import url="../header.jsp"/>
	<div class="outer">
		<br>
		<h2 align="center">공지 사항 작성</h2>
		<div class="tableArea">
				<table>
					<tr>
						<td>제목 </td>
						<td colspan="3">${notice.title }</td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							${notice.writer }
						</td>
						<td>작성일</td>
						<td>${notice.nDate }</td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							${notice.content }
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button onclick="moveModify()">수정</button>
					<button onclick="moveList()">목록</button>
				</div>
		</div>
	</div>
	<c:import url="../footer.html"/>
</body>
</html>