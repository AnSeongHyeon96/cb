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
	<a class="menu-button">내정보</a>
	<a href="${pageContext.request.contextPath }/member/editForm">내정보수정</a>
	<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a>
	<a href="${pageContext.request.contextPath }/member/out">탈퇴하기</a>
	
	<br>	
	<a href="${pageContext.request.contextPath }/product/productAdd">상품등록</a>
	<a href="${pageContext.request.contextPath }/product/productList">판매리스트</a>
	
=======
<body class="bodymenu">
>>>>>>> branch 'master' of https://github.com/AnSeongHyeon96/cb.git


<section class="nav-bar">
    <div class="nav-container">
      <div class="brand">											<!-- 濡쒓퀬 �씠誘몄�� �뤃�뜑�뿉 �궗吏� �꽔怨� 寃쎈줈 蹂�寃�  -->
        <a href="${pageContext.request.contextPath }/member/main"> <img src="${path}/resources/cbimg/so2.jpg"></a>
      </div>
      <nav>
        
        <c:if test="${sessionScope.user_type==1 }">
        <ul class="nav-list">
        	 <li>
         	   <a href="#">異붽��硫붾돱</a>
       		</li>
       		<li>
         	   <a href="#">異붽��硫붾돱2</a>
       		</li>
          <li>
            <a href="#">�궡�젙蹂�</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/member/editForm">�궡�젙蹂댁닔�젙</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/logout">濡쒓렇�븘�썐</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/out">�깉�눜�븯湲�</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#!">�긽�뭹</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/product/productAdd">�긽�뭹�벑濡�</a>

              </li>
              <li>
                <a href="${pageContext.request.contextPath }/product/productList">�뙋留ㅻ━�뒪�듃</a>
              </li>
            </ul>
          </li>
        </ul>
        
        	
               
        </c:if>
        
        <!--  �쐞�뿉�뒗 �씪諛섎줈洹몄씤 �븘�옒�뒗 愿�由ъ옄 濡쒓렇�씤  -->
        
        <c:if test="${sessionScope.user_type==2 }"> 
        <ul class="nav-list">
        	<li>
         	   <a href="#">異붽��硫붾돱</a>
       		</li>
       		<li>
         	   <a href="#">異붽��硫붾돱2</a>
       		</li>
          <li>
            <a href="#">愿�由�</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/admin/memberList">�쉶�썝愿�由�</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/main">移댄뀒怨좊━愿�由�</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/admin/productList"> �긽�뭹由ъ뒪�듃愿�由�</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#!">�궡�젙蹂�</a>
            <ul class="nav-dropdown">
              <li>
                <a href="${pageContext.request.contextPath }/member/editForm">�궡�젙蹂댁닔�젙</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/logout">濡쒓렇�븘�썐</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath }/member/out">�깉�눜�븯湲�</a>
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