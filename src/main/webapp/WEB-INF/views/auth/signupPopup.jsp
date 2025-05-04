<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="popup_overlay signup_popup_overlay" id="signup_popup_overlay">
  <div class="popup_container signup_popup_container">
    <div class="popup_header signup_popup_header">
      <button type="button" class="popup_close signup_popup_close" id="close_signup_popup">&times;</button>
      <h2 class="popup_title signup_popup_title">회원가입</h2>
    </div>
    <ul class="signup_tabs">
      <li class="tab active" data-tab="personal">개인회원 가입</li>
      <li class="tab"        data-tab="corporate">기업회원 가입</li>
    </ul>

    <form id="personal_form" class="signup_form active" action="${pageContext.request.contextPath}/auth/signup/personal" method="post">
      <div class="signup_input_group">
        <!-- 각 form_row / form_label / form_input_field / btn_small 등 동일 구조 -->
        <!-- … (생략) … -->
      </div>
      <div class="signup_agreement_group">
        <%@ include file="/WEB-INF/views/fragments/signupAgreement.jspf" %>
      </div>
      <button type="submit" class="btn_submit signup_btn_submit"><img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg"><span>회원가입</span></button>
    </form>

    <form id="corporate_form" class="signup_form" action="${pageContext.request.contextPath}/auth/signup/corporate" method="post">
      <div class="signup_input_group">
        <!-- 기업회원용 form_row 들… -->
      </div>
      <div class="signup_agreement_group">
        <%@ include file="/WEB-INF/views/fragments/signupAgreement.jspf" %>
      </div>
      <button type="submit" class="btn_submit signup_btn_submit"><img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg"><span>기업회원가입</span></button>
    </form>
  </div>
</div>
