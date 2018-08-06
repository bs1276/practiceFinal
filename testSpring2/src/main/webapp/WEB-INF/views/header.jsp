<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<title>Spring project</title>
<style type="text/css">
body {
	background-image: url("resources/images/background.jpg");
}

#tb {
background-color: white;
}
.login {
	float: right;
}

ul li a {
	display: block;
	width: 120px;
	height: 35px;
	background: orange;
	padding-top: 5px;
}

ul li a:hover {
	background: olive;
	color: white;
	text-shadow: 2px 2px 5px black;
}

ul li {
	list-style: none;
	float: left;
	margin-right: 5px;
	padding-top: 10px;
	text-align: center;
	font-size: 16pt;
	font-weight: bold;
}
</style>
</head>
<body>
	<header>
		<h1>first Spring Project</h1>

	</header>
	<c:set var="member" value="${sessionScope.member}" />
	<c:if test="${empty sessionScope.member }">
		<form action="login.do" method="post" class="login">
			<table class="login" width="250" cellpadding="0" cellspacing="0"
				bgcolor="yellow">
				<tr>
					<td>아이디 :</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>암 호 :</td>
					<td><input type="password" name="passwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인"> &nbsp; &nbsp; <c:url var="signup"
							value="enrollView.do" /> <a href="${signup}">회원가입</a></td>
				</tr>
				<tr>
					<td colspan="2" align="center">아이디/암호가 기억나지 않는다면</td>
				</tr>
			</table>
		</form>
	</c:if>

	<c:if test="${!empty sessionScope.member}">
		<table class="login" width="250" cellpadding="0" cellspacing="0"
			bgcolor="yellow">
			<tr>
				<td>${member.name} 님</td>
				<c:url var="lout" value="logout.do" />
				<td><a href="${lout}">로그아웃</a></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><c:url var="myinfo"
						value="myinfo.do" /> <a href="${myinfo }">내 정보보기</a></td>
			</tr>
			<tr>
				<td colspan="2" align="center"></td>
			</tr>
		</table>
	</c:if>
	<c:url var="nl" value="noticeList.do">
		<c:param name="title" value="글 제목"/>
		<c:param name="content" value="글 내용 입니다"/>
		<c:param name="gogo" value="테스트 값 입니다."/>
	</c:url>
	<c:url var="bl" value="blist.do" />
	<nav>
		<ul>
			<li><a href="${nl}">공지사항</a></li>
			<li><a href="${bl}">게시판</a></li>
			<li><a>etc</a></li>
			<li><a>etc</a></li>
		</ul>
	</nav>
	<hr style="clear: both;">
</body>
</html>