<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CampBoss - 회원관리</title>

	<c:import url="/WEB-INF/views/member/mainMenu.jsp"></c:import>
	<br><br><br>
	
</head>
<body>
<h3>CampBoss - 회원관리</h3>
<form action = "${pageContext.request.contextPath}/admin/memberList" method = "post">
<table border="1">
<c:choose>
	<c:when test="${empty list }">
		<tr>
			<td colspan="9" align="center" > 데이터가 없습니다. </td>  
		</tr>
	</c:when>
	
	<c:when test="${not empty list }">
		
		<tr align="center" >
				<td>아이디   </td>
				<td>비밀번호  </td>
				<td>이름   </td>
				<td>닉네임 </td>
				<td>이메일  </td>
				<td>전화번호   </td>
				<td>주소  </td>
				<td>생일 </td>
				<td> </td>
		</tr>
		<c:forEach var="m" items="${list }" >
				<c:if test="${m.user_type == 1}">
			<tr align="center" >
				<td>${m.user_id } </td>
				<td>${m.user_pwd } </td>
				<td>${m.user_name } </td>
				<td>${m.user_nickname } </td>
				<td>${m.user_email } </td>
				<td>${m.user_tel } </td>
				<td>${m.user_addr } </td>
				<td>${m.user_birth } </td>
				<td> <a  href="${pageContext.request.contextPath}/member/del?user_id=${m.user_id}"  >탈퇴</a> </td>
			</tr>
				</c:if>
		</c:forEach>
		</c:when>
	
</c:choose>
</table>
</form>

</body>
</html>