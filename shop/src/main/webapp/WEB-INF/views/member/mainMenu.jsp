<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script></script>

<link href="${path}/resources/css/title.css" rel="stylesheet" >
</head>
<body>


<h1><a href="${pageContext.request.contextPath }/member/main" > CAMPBOSS </a></h1>


<c:if test="${sessionScope.user_type==1 }"> 
	<a class="menu-button">내정보</a>
	<a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
	<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
	<a href="${pageContext.request.contextPath }/member/out">탈퇴하기</a>
	
	<br>	
	<a href="${pageContext.request.contextPath }/product/productAdd">상품등록</a>
	<a href="${pageContext.request.contextPath }/product/productList">판매리스트</a>
	


</c:if>



<c:if test="${sessionScope.user_type==2 }"> 
	<a>관리</a>
	<a href="${pageContext.request.contextPath }/admin/memberList">회원관리</a>
	<a href="${pageContext.request.contextPath }/member/main">카테고리관리</a>
	<a href="${pageContext.request.contextPath }/admin/productList"> 상품리스트관리</a>
	
	
	<br>
	<a>내정보</a>
	<a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
    <a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
    <a href="${pageContext.request.contextPath }/member/out">탈퇴하기</a>
	
</c:if>


</body>
</html>