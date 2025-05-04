<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KDL 홈페이지</title>
  
  <!-- 공통 스타일 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <!-- 팝업 전용 스타일 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/popup.css">
</head>
<body>
  <!-- 헤더 -->
  <header>
    <div class="header_logo">
      <a href="/"><img src="${pageContext.request.contextPath}/resources/images/kdl_logo.png" alt="KDL 로고"></a>
    </div>
    <nav class="main_nav">
      <ul>
        <li><a href="/about">회사 소개</a></li>
        <li><a href="/services">화물운송 분류</a></li>
        <li><a href="/products">화물운송 업무</a></li>
        <li><a href="/support">고객 지원</a></li>
      </ul>
    </nav>
    <div class="header_auth">
      <img src="${pageContext.request.contextPath}/resources/images/person_icon.svg" alt="사람 아이콘" class="login_icon">
      <a href="#" id="smbtn_login_popup" class="small_btn smbtn_login_popup">로그인</a>
      <a href="#" id="smbtn_signup_popup" class="small_btn smbtn_signup_popup">회원가입</a>
    </div>
  </header>

  <main>
    <!-- 랜딩 페이지 콘텐츠 -->
  </main>

  <footer>
    <!-- 푸터 콘텐츠 -->
  </footer>

  <!-- 로그인 팝업 include -->
  <jsp:include page="/WEB-INF/views/auth/loginPopup.jsp" />
  <script src="${pageContext.request.contextPath}/resources/js/loginPopup.js"></script>

  <!-- 회원가입 팝업 include -->
  <jsp:include page="/WEB-INF/views/auth/signupPopup.jsp" />
  <script src="${pageContext.request.contextPath}/resources/js/signupPopup.js"></script>

</body>
</html>
