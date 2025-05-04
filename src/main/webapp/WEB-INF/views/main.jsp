<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <title>KDL 홈페이지</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/popup.css">
</head>
<body>
  <header>
    <div class="header_logo">
      <a href="/"><img src="${pageContext.request.contextPath}/resources/images/kdl_logo.png" alt="KDL 로고"></a>
    </div>
    <nav class="main_nav">
      <ul>
        <li><a href="/about">회사 소개</a></li>
        <li><a href="/division">화물운송 분류</a></li>
        <li><a href="/business">화물운송 업무</a></li>
        <li><a href="/support">고객 지원</a></li>
      </ul>
    </nav>
    <div class="header_auth">
      <img src="${pageContext.request.contextPath}/resources/images/person_icon.svg" alt="사람 아이콘" class="login_icon">
      <a href="#" id="btnLoginPopup" class="btn btn_small btn_w80 btn_border_white">로그인</a>
      <a href="#" id="btnSignupPopup" class="btn btn_small btn_w80 btn_border_white">회원가입</a>
    </div>
  </header>
  <main><!-- 콘텐츠 --></main>
  <footer><!-- 푸터 --></footer>

  <jsp:include page="/WEB-INF/views/auth/loginPopup.jsp"/>
  <script src="${pageContext.request.contextPath}/resources/js/loginPopup.js"></script>

  <jsp:include page="/WEB-INF/views/auth/signupPopup.jsp"/>
  <script src="${pageContext.request.contextPath}/resources/js/signupPopup.js"></script>
</body>
</html>
