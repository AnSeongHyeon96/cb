<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CampBoss - ��ǰ����Ʈ����</title>

	<c:import url="/WEB-INF/views/member/mainMenu.jsp"></c:import>
	<br><br><br>
	
</head>
<body>
<h3>CampBoss - ��ǰ����Ʈ����</h3>
<form action = "${pageContext.request.contextPath}/admin/productList" method = "post">

<table border="1">
<c:choose>
	<c:when test="${empty list }">
		<tr>
			<td colspan="5" align="center" > �����Ͱ� �����ϴ�. </td>  
		</tr>
	</c:when>
	
	<c:when test="${not empty list }">
		
		<tr align="center" >
				<td>��ȣ   </td>
				<td>����   </td>
				<td>����   </td>
				<td>�Ǹ���</td>
				<td> </td>

		</tr>
		<c:forEach var="p" items="${list }" >
				
			<tr align="center" >
				<td>${p.num } </td>
				<td>${p.name } </td>
				<td>${p.price } </td>
				<td>${p.seller_id } </td>
				<td> <a href="${pageContext.request.contextPath}/seller/prodel?num=${p.num}">����</a> </td>
			</tr>
				
		</c:forEach>
		</c:when>
	
</c:choose>
</table>
</form>
</body>
</html>