// src/main/webapp/resources/js/signupPopup.js

// 로그인 팝업(open/close) 제어 스크립트
// 버튼 클릭, 오버레이 클릭, ESC 키 입력에 반응하여 'visible' 클래스 토글


// src/main/webapp/resources/js/signupPopup.js

document.addEventListener('DOMContentLoaded', function() {
  const overlay   = document.getElementById('signup_popup_overlay');
  const btnOpen   = document.getElementById('smbtn_signup_popup');       // home.jsp 버튼
  const closeBtn  = document.getElementById('close_signup_popup');
  const tabs      = document.querySelectorAll('.signup_tabs .tab');
  const forms     = document.querySelectorAll('.signup_form active');

  // 팝업 열기 및 초기화
  function openSignupPopup() {
    // 1) 탭·폼 초기화: 개인회원 탭만 active
    tabs.forEach(tab => {
      tab.classList.toggle('active', tab.dataset.tab === 'personal');
    });
    forms.forEach(f => {
      f.classList.toggle('active', f.id === 'personal_form');
    });

    // 2) 팝업 보이기
    overlay.classList.add('visible');
    document.body.style.overflow = 'hidden';
  }

  function closeSignupPopup() {
    overlay.classList.remove('visible');
    document.body.style.overflow = '';
  }

  // 1) 열기 버튼 클릭
  btnOpen.addEventListener('click', function(e) {
    e.preventDefault();
    openSignupPopup();
  });

  // 2) 닫기 버튼
  closeBtn.addEventListener('click', closeSignupPopup);

  // 3) 오버레이 바깥 클릭
  overlay.addEventListener('click', function(e) {
    if (e.target === overlay) closeSignupPopup();
  });

  // 4) ESC 키
  document.addEventListener('keydown', function(e) {
    if ((e.key === 'Escape' || e.keyCode === 27) && overlay.classList.contains('visible')) {
      closeSignupPopup();
    }
  });

  // 5) 탭 전환
  tabs.forEach(tab => {
    tab.addEventListener('click', function() {
      tabs.forEach(t => t.classList.toggle('active', t === tab));
      forms.forEach(f => f.classList.toggle('active', f.id === tab.dataset.tab + '_form'));
    });
  });

  // 6) 전체 동의 토글 (기존)
  const agreeAll = document.getElementById('agreeAll');
  const checkboxes = document.querySelectorAll('.signup_agreement_group input[type="checkbox"]:not(#agreeAll)');
  if (agreeAll) {
    agreeAll.addEventListener('change', () => {
      checkboxes.forEach(cb => cb.checked = agreeAll.checked);
    });
  }
});


