<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <title>공지사항</title>
    <!-- CSS 포함 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cstmspt/notice.css">
</head>

<body>
  <h1>공지사항 작성</h1>
  <form action="process_notice.php" method="post">
    <label for="title">제목:</label>
    <input type="text" id="title" name="title" required><br><br>

    <label for="content">내용:</label>
    <textarea id="content" name="content" required></textarea><br><br>

    <button type="submit">등록</button>
  </form>

    <footer>
        <p>회사 소개 | 개인정보 처리방침 | 이용 약관</p>
        <div class="social-icons">
            <a href="#">[페이스북]</a>
            <a href="#">[인스타그램]</a>
            <a href="#">[링크드인]</a>
        </div>
        <p>© 2025 KDL(주). All rights reserved.</p>
    </footer>
    
    <!-- JavaScript 포함 -->
    <%-- <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script> --%>

</body>
</html>