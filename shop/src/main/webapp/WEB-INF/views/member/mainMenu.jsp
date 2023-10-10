<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
>>>>>>> branch 'master' of https://github.com/AnSeongHyeon96/cb.git
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script></script>

<link href="${path}/resources/css/title.css" rel="stylesheet" >
=======
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
    <link href="${path}/resources/css/mainMenu.css" rel="stylesheet">
   

>>>>>>> branch 'master' of https://github.com/AnSeongHyeon96/cb.git
</head>
<<<<<<< HEAD
<body>


<h1><a href="${pageContext.request.contextPath }/member/main" > CAMPBOSS </a></h1>


<c:if test="${sessionScope.user_type==1 }"> 
	<a class="menu-button">������</a>
	<a href="${pageContext.request.contextPath }/member/editForm">����������</a>
	<a href="${pageContext.request.contextPath }/member/logout">�α׾ƿ�</a>
	<a href="${pageContext.request.contextPath }/member/out">Ż���ϱ�</a>
	
	<br>	
	<a href="${pageContext.request.contextPath }/product/productAdd">��ǰ���</a>
	<a href="${pageContext.request.contextPath }/product/productList">�ǸŸ���Ʈ</a>
	
=======
<body class="bodymenu">
>>>>>>> branch 'master' of https://github.com/AnSeongHyeon96/cb.git


<section class="nav-bar">
    <div class="nav-container">
      <div class="brand">											<!-- 로고 이미지 폴더에 사진 넣고 경로 변경  -->
        <a href="${pageContext.request.contextPath }/member/main"> <img src="${path}/resources/cbimg/so2.jpg"></a>
      </div>
      <nav>
        
        <c:if test="${sessionScope.user_type==1 }">
        <ul class="nav-list">
        	 <li>
         	   <a href="#">추가메뉴</a>
       		</li>
       		<li>
         	   <a href="#">추가메뉴2</a>
       		</li>
          <li>
            <a href="#">내정보</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/out">탈퇴하기</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#!">상품</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/product/productAdd">상품등록</a>

              </li>
              <li>
                <a href="${pageContext.request.contextPath }/product/productList">판매리스트</a>
              </li>
            </ul>
          </li>
        </ul>
        
        	
               
        </c:if>
        
        <!--  위에는 일반로그인 아래는 관리자 로그인  -->
        
        <c:if test="${sessionScope.user_type==2 }"> 
        <ul class="nav-list">
        	<li>
         	   <a href="#">추가메뉴</a>
       		</li>
       		<li>
         	   <a href="#">추가메뉴2</a>
       		</li>
          <li>
            <a href="#">관리</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/admin/memberList">회원관리</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/main">카테고리관리</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/admin/productList"> 상품리스트관리</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#!">내정보</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/out">탈퇴하기</a>
              </li>
            </ul>
          </li>
        </ul>
       </c:if>
        
      </nav>
    </div>
  </section>
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
 <script src="${path}/resources/js/mainMenu.js"></script>

</body>
</html>