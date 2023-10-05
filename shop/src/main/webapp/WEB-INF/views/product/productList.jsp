<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CampBoss - 판매리스트</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {
		$(".img").mouseover(function() {
			$("#bigImg").attr('src', this.src);
		});
		$("#del").click(function() {
			$("#f1").attr('action', '/seller/del');
			$("#f1").submit();
		});
	});
</script>

<c:import url="/WEB-INF/views/member/mainMenu.jsp"></c:import>
	<br><br><br>
</head>
<body>

<h3>CampBoss - 판매리스트</h3>

<form action="${pageContext.request.contextPath }/product/productList">
<table border="1">
	<c:choose>
	<c:when test="${empty list }">
	<tr >
		<td colspan="4">상품이 없습니다.</td>
	</tr>
	
	</c:when>
	
	<c:when test="${not empty list }">
	
	<tr>
		<td>상품이름</td>
		<td>상품내용</td>
		<td>가격</td>
		
	</tr>
	
	<c:forEach var="p" items="${list }">
	
	<tr>
		<td><a href="${pageContext.request.contextPath }/product/productEdit?num=${p.num}">${p.name }</a></td>
		<td>${p.info }</td>
		<td>${p.price }</td>
		
	</tr>
	</c:forEach>
	</c:when>
	</c:choose>
	
	</table>
	</form>
</body>
</html>