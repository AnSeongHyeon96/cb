<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CampBoss - 로그인</title>
<link href="${path}/resources/css/login.css" rel="stylesheet" >
</head>

<body>
<div class = "myform">
	<div class="logo"> CampBoss - 로그인
		<div ><i class="fa fa-cloud-upload" aria-hidden = "true"></i>
		</div>
	</div>
	
	<form action="${pageContext.request.contextPath }/member/login"
	method="post">
	
	<input type="text" name="user_id" placeholder = "  ID">
	 <input type="password" name="user_pwd" placeholder=" Password">
	<button type="submit">LOG IN </button>
	
	<div><a href="${pageContext.request.contextPath }/member/joinForm">회원가입</a></div>
	</form>
</div>

</body>

</html>