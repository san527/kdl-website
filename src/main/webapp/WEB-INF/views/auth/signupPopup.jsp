<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="popup_overlay" id="signup_popup_overlay">
  <div class="popup_container">
    <div class="popup-close-wrap">
      <button type="button" class="popup_close" id="close_signup_popup">&times;</button>
    </div>

    <!-- 타이틀 -->
    <div class="popup-header-title-wrap">
      <h2 class="popup_title">회원가입</h2>
    </div>

    <!-- 회원유형 탭 -->
	<div class="signup-tabs">
	  <button type="button" class="tab-button active" data-tab="personal">개인회원 가입</button>
	  <button type="button" class="tab-button"       data-tab="corp">기업회원 가입</button>
	</div>
	
    <!-- 개인회원 폼 -->
    <div class="signup-contents">
		<div class="tab-content" id="personal">
		    <form id="signup_personal_form" class="signup_form active" 
		          action="${pageContext.request.contextPath}/auth/signupPersonal" method="post">
		      <div class="signup_input_group">
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">아</span><span class="char">이</span><span class="char">디</span></label>
		          <input type="text" name="memberId" class="input_field" placeholder="아이디 입력" required>
		        </div>
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">비</span><span class="char">밀</span><span class="char">번</span><span class="char">호</span></label>
		          <input type="password" name="memberPw" class="input_field" placeholder="비밀번호 입력" required>
		        </div>
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">비</span><span class="char">번</span><span class="char">확</span><span class="char">인</span></label>
		          <input type="password" name="memberPwChk" class="input_field" placeholder="비밀번호 확인" required>
		        </div>
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">이</span><span class="char">름</span></label>
		          <input type="text" name="memberName" class="input_field" placeholder="이름 입력" required>
		        </div>
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">휴</span><span class="char">대</span><span class="char">폰</span></label>
		          <input type="tel" name="memberPhone" class="input_field" placeholder="휴대폰 번호" required>
		        </div>
		        <div class="signup_form_row">
		          <label class="label_item"><span class="char">이</span><span class="char">메</span><span class="char">일</span></label>
		          <input type="email" name="memberEmail" class="input_field" placeholder="이메일 입력" required>
		        </div>
		      </div>
		
		      <!-- 약관 동의 -->
		      <div class="signup_agreement_group">
				<label>
				    <input type="checkbox" id="agreeAll" class="comm_checkbox">
				    전체 약관 동의
				</label>
				<hr>
		        <label><input type="checkbox" name="agreeTerms" class="comm_checkbox" required> 이용약관 동의</label>
		        <label><input type="checkbox" name="agreePrivacy" class="comm_checkbox" required> 개인정보 처리방침 동의</label>
		        <label><input type="checkbox" name="agreeMarketing" class="comm_checkbox"> 마케팅 정보 수신 동의</label>
		      </div>
		
		      <!-- 제출 버튼 -->
		      <button type="submit" class="btn btn_large">회원가입</button>
		
		      <!-- 이미 계정 있음 -->
		      <div class="signup_footer">
		        이미 계정이 있으신가요?
		        <button type="button" class="btn btn_small" id="to_login_popup">로그인</button>
		      </div>
		    </form>
		</div>
		
    <!-- 기업회원 폼 (기본 숨김) -->
		<div class="tab-content hidden" id="corp">
		    <form id="signup_corporate_form" class="signup_form" 
		          action="${pageContext.request.contextPath}/auth/signupCorporate" method="post">
		      <!-- 개인폼과 유사하되, 사업자 필드 추가 -->
		      <!-- ... -->
		    </form>
		</div>
	</div>
  </div>	
</div>