<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="popup_overlay" id="login_popup_overlay">
  <div class="popup_container">
    <div class="popup_header">
      <button type="button" class="popup_close" id="close_login_popup">&times;</button>
      <h2 class="popup_title">로그인</h2>
    </div>

    <form id="login_popup_form" action="${pageContext.request.contextPath}/auth/login" method="post">
      <div class="login_input_group">
        <div class="form_row form_id_row">
          <label class="form_label id_label">
            <span class="char">아</span><span class="char">이</span><span class="char">디</span>
          </label>
          <input type="text" id="memberId" name="memberId" class="form_input_field member_id_input" placeholder="아이디를 입력 하십시오." />
        </div>
        <div class="form_row form_password_row">
          <label class="form_label password_label">
            <span class="char">비</span><span class="char">밀</span><span class="char">번</span><span class="char">호</span>
          </label>
          <input type="password" id="memberPw" name="memberPw" class="form_input_field member_pw_input" placeholder="비밀번호를 입력 하십시오." />
        </div>
        <div class="remember_id_group">
          <input type="checkbox" id="rememberId" name="rememberId" class="form_checkbox" />
          <label for="rememberId" class="form_checkbox_label">아이디 저장</label>
        </div>
      </div>

      <button type="submit" class="btn_submit">
        <img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg" alt="KDL 로고">
        <span>로그인</span>
      </button>

      <div class="find_signup_link_group">
        <div class="find_links_set">
          <button type="button" class="btn_find_link">아이디 찾기</button>
          <span class="separator">|</span>
          <button type="button" class="btn_find_link">비밀번호 찾기</button>
        </div>
        <div class="signup_link_set">
          <span>아직 회원이 아니신가요?</span>
          <button type="button" class="signup_with_icon_link">
            <img src="${pageContext.request.contextPath}/resources/images/person_icon_blue.svg" alt="사람 아이콘">
            <span>회원가입</span>
          </button>
        </div>
      </div>
    </form>
  </div>
</div>
