<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<div class="popup_overlay" id="login_popup_overlay">
  <div class="popup_container">
    <!-- 1) 닫기버튼 -->
    <div class="popup-close-wrap">
      <button type="button" class="popup_close" id="close_login_popup">&times;</button>
    </div>

    <!-- 2) 타이틀 -->
    <div class="popup-header-title-wrap">
      <h2 class="popup_title">로그인</h2>
    </div>

    <!-- 3) 입력 그룹 -->
    <form id="login_popup_form" action="${pageContext.request.contextPath}/auth/login" method="post">
      <div class="input_field_group">
        <div class="row">
          <label class="label_item">
            <span class="char">아</span><span class="char">이</span><span class="char">디</span>
          </label>
          <input type="text" name="memberId" class="input_field" placeholder="아이디를 입력하세요." required />
        </div>
        <div class="row">
          <label class="label_item">
            <span class="char">비</span><span class="char">밀</span>
            <span class="char">번</span><span class="char">호</span>
          </label>
          <input type="password" name="memberPw" class="input_field" placeholder="비밀번호를 입력하세요." required />
        </div>
        <div class="remember_id_group">
          <input type="checkbox" id="rememberId" name="rememberId" class="comm_checkbox" />
          <label for="rememberId" class="checkbox_label">아이디 저장</label>
        </div>
      </div>

      <!-- 4) 로그인 제출 버튼 -->
      <button type="submit" class="btn btn_large">
        <img src="${pageContext.request.contextPath}/resources/images/kdl_logo_graphic.svg" alt="KDL">
        <span>로그인</span>
      </button>

      <!-- 5) 찾기 / 회원가입 링크 -->
      <div class="find_signup_link_group">
        <div class="find_links">
          <button type="button" class="btn btn_small">아이디 찾기</button>
          <span class="separator">|</span>
          <button type="button" class="btn btn_small">비밀번호 찾기</button>
        </div>
        <div class="signup_link">
          <span>아직 회원이 아니신가요?</span>
          <button type="button" class="signup_link">
            <img src="${pageContext.request.contextPath}/resources/images/person_icon_blue.svg" alt="">
            <span>회원가입</span>
          </button>
        </div>
      </div>
    </form>
  </div>
</div>


<!-- Git 테스트 1 -->
<!--  -->
