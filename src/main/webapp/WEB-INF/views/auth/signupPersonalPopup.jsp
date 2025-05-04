<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/popup.css"/>

<div class="popup_overlay" id="signup_popup_overlay">
  <div class="popup_container">

    <!-- 1. 헤더 -->
    <div class="popup_header">
      <button type="button" class="popup_close" id="close_signup_popup">&times;</button>
      <h2 class="popup_title">회원가입</h2>
    </div>

    <!-- 2. 탭 그룹 -->
    <ul class="signup_tabs">
      <li class="tab active" data-tab="personal">개인회원 가입</li>
      <li class="tab"        data-tab="corporate">기업회원 가입</li>
    </ul>

    <!-- 3. 인풋 그룹 -->
    <form id="personal_form" class="signup_form active" action="${pageContext.request.contextPath}/auth/signup/personal" method="post">
      <div class="signup_input_group">
        <!-- 회원아이디 -->
        <div class="form_row member-id-row">
          <label class="form_label">
            <span class="char">회</span><span class="char">원</span>
            <span class="char">아</span><span class="char">이</span><span class="char">디</span>
          </label>
          <input type="text" name="memberId" class="form_input_field id-field" placeholder="아이디를 입력하세요." required />
          <button type="button" class="btn_submit">
	        <img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg" alt="KDL 로고">
	        <span>중복확인</span>
	      </button>
        </div>

        <!-- 비밀번호 -->
        <div class="form_row">
          <label class="form_label">
            <span class="char">비</span><span class="char">밀</span>
            <span class="char">번</span><span class="char">호</span>
          </label>
          <input type="password" name="password" class="form_input_field" placeholder="영문+숫자+특수문자 8~12자" required />
        </div>

        <!-- 비밀번호 확인 -->
        <div class="form_row">
          <label class="form_label">
            <span class="char">비</span><span class="char">밀</span>
            <span class="char">번</span><span class="char">호</span>
            <span class="char">확</span><span class="char">인</span>
          </label>
          <input type="password" name="passwordConfirm" class="form_input_field" placeholder="비밀번호를 다시 입력하세요." required />
        </div>

        <!-- 회원성명 -->
        <div class="form_row">
          <label class="form_label">
            <span class="char">회</span><span class="char">원</span>
            <span class="char">성</span><span class="char">명</span>
          </label>
          <input type="text" name="fullName" class="form_input_field" placeholder="이름을 입력하세요." required />
        </div>

        <!-- 휴대전화번호 -->
        <div class="form_row">
          <label class="form_label">
            <span class="char">휴</span><span class="char">대</span>
            <span class="char">전</span><span class="char">화</span>
            <span class="char">번</span><span class="char">호</span>
          </label>
          <input type="tel" name="mobile" class="form_input_field" placeholder="휴대전화번호를 입력하세요." required />
        </div>

        <!-- 이메일 + 도메인 선택 -->
        <div class="form_row">
          <label class="form_label">
            <span class="char">회</span><span class="char">원</span>
            <span class="char">이</span><span class="char">메</span><span class="char">일</span>
          </label>
          <%@ include file="/WEB-INF/views/fragments/emailSelect.jspf" %>
        </div>
      </div>

      <!-- 4. 약관 동의 그룹 -->
      <div class="signup_agreement_group">
        <%@ include file="/WEB-INF/views/fragments/signupAgreement.jspf" %>
      </div>

      <!-- 5. 회원가입 제출버튼 -->
      <button type="submit" class="btn_submit">
        <img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg" alt="KDL 로고">
        <span>회원가입</span>
      </button>
    </form>

    <!-- 기업회원가입 폼 -->
    <form id="corporate_form" class="signup_form" action="${pageContext.request.contextPath}/auth/signup/corporate" method="post">
      <!-- TODO: 기업회원폼 동일 구조로 채우기 -->
    </form>

  </div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/signupPopup.js"></script>
