<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script src="resources/js/summernote-ko-KR.js"></script>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style>
	.outer{
		width:800px;
		height:500px;
		background:black;
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
	$(function() {
	  $('#summernote').summernote({
		  height:500,
	  	  lang: 'ko-KR'
	  });
	});
</script>
</head>
<body>
	<div class="outer">
		<br>
		<h2 align="center">공지 사항 작성</h2>
		<div class="tableArea">
			<form action="${pageContext.request.contextPath}/noticeUpdate.do" method="post">
				<input type="hidden" name="no" value="${notice.no}"/>
				<table>
					<tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" size="50" name="title" value="${notice.title }"></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="${notice.writer }" name="writer" readonly>
							<input type="hidden" value="admin" name="userId">
						</td>
						<td>작성일</td>
						<td><input type="date" name="nDate" value="${notice.nDate }"></td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea id="summernote" name="content">${notice.content }</textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">수정하기</button>
				</div>
				
			</form>
			
		</div>
	</div>
	<c:import url="../footer.html"/>
</body>
</html>