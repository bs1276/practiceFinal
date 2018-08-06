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
		height:1000px;
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
		height:800px;
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
			<form action="${pageContext.request.contextPath}/insertNotice.do" method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td>제목 </td>
						<td colspan="3"><input type="text" size="50" name="title"></td>
					</tr>
					<tr>
						<td>작성자 </td>
						<td>
							<input type="text" value="admin" name="writer" readonly>
							<input type="hidden" value="admin" name="userId">
						</td>
						<td>작성일</td>
						<td><input type="date" name="nDate"></td>
					</tr>
					<tr>
						<td>내용 </td>
					</tr>
					<tr>
						<td colspan="4">
							<textarea id="summernote" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td colspan="3"><input type="file" name="file"/></td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset" onclick="javascript:location.href='noticeList.do';">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
				
			</form>
			
		</div>
	</div>
	<c:import url="../footer.html"/>
</body>
</html>