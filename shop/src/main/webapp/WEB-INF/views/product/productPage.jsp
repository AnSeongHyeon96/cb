<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).ready(function() {
	$.post("/admin/getsub", {
		type : 1,
		p_id : 0
	}).done(function(data) {
		var c = eval("(" + data + ")");
		for (i = 0; i < c.length; i++) {
			$("#s1").append(	"<option value='"+c[i].id+"'>"
										+ c[i].name + "</option>");
		}
	});

	$("#s1").click(function() {
		var x = 0;
		x = this.options[this.options.selectedIndex].value
		$.post("/admin/getsub", {
				type : 2,
				p_id : x
		}).done(function(data) {
			var c = eval("(" + data + ")");
			$("#s2").empty();
			$("#s3").empty();
			for (i = 0; i < c.length; i++) {
				$("#s2").append(	"<option value='"+c[i].id+"'>"
													+ c[i].name + "</option>");
			}
		});
	});

	$("#s2").click(function() {
		var x = 0;
		x = this.options[this.options.selectedIndex].value
		$.post("/admin/getsub", {
			type : 3,
			p_id : x
		}).done(function(data) {
		var c = eval("(" + data + ")");
		$("#s3").empty();
		for (i = 0; i < c.length; i++) {
			$("#s3").append(	"<option value='"+c[i].id+"'>"
													+ c[i].name + "</option>");
		}
	});
});
});
</script>
</head>
<body>
<h3>Camp Boss - ��ǰ����Ʈ</h3>

<!-- ī�װ� �˻� -->
	<form action="${pageContext.request.contextPath }/seller/cateList"
		method="post">
		<table>
		<tr>
		
		<td>
		��з�<select id="s1" name="c1" class="form-select" aria-label="Default select example"></select> 
		�ߺз�<select id="s2" name="c2" class="form-select" aria-label="Default select example"></select>
		�Һз�<select id="s3" name="c3" class="form-select" aria-label="Default select example"></select> 
		<input type="submit" value="�˻�">
		</td>
		</tr>
		</table>
	</form>
	
	
<!-- ��ǰ������ �˻� -->	
	<form action="${pageContext.request.contextPath }/seller/nameList"
		method="post">
		<table border="1">
		<tr>
		<th>��ǰ������ �˻�</th>
		<td><input type="text" name="name">
		<input type="submit" value="�˻�"></td>
		</tr>
		</table>
	</form>
	
<!-- �Ǹ��ڷ� �˻� -->
	<form action="${pageContext.request.contextPath }/seller/sellerList"
		method="post">
		<table border="1">
		<tr>
		<th>�Ǹ��ڷ� �˻�</th>
		<td><input type="text" name="seller_id">
		<input type="submit" value="�˻�"></td>
		</tr>
		</table>
	</form>
	
	
	<!-- �˻��� ��ǰ ����Ʈ ��� -->
	
	<c:if test="${empty list }">
	<table border="1">
	<tr>
	<td>�˻��� ��ǰ�� �����ϴ�.</td>
	</tr>
	</table>
	 </c:if>
	 
	<c:if test="${not empty list }">
	<table border="1" cellspacing="0">
	<tr><th>��ǰ�̸�</th><th>��ǰ����</th><th>��ǰ����</th><th>�Ǹ���</th></tr>
	<c:forEach var="p" items="${list }">
	<tr>
	<td><a href="${pageContext.request.contextPath }
	/product/productView?num=${p.num }&type=1">${p.name }</a></td>
	<td>${p.info }</td><td>${p.price }</td>
	<td>${p.seller_id }</td>
	</tr>
	</c:forEach>

	</table>
	</c:if>


</body>
</html>