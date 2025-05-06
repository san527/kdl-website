// src/main/webapp/resources/js/signupPopup.js

// 1) 요소 가져오기
document.addEventListener('DOMContentLoaded', () => {
  const overlay = document.getElementById('signup_popup_overlay');
  const btnOpen = document.getElementById('btnSignupPopup');		// main.jsp
  const btnClose = document.getElementById('close_signup_popup');
  const tabs = document.querySelectorAll('.signup_tabs .tab-button');
  const forms = document.querySelectorAll('.signup_personal_form');

 // 2) 열기
  function open() {
    tabs.forEach(t => t.classList.toggle('active', t.dataset.tab === 'personal'));
    forms.forEach(f => f.classList.toggle('active', f.id === 'signup_personal_form'));
    overlay.classList.add('visible');
    document.body.style.overflow = 'hidden';
  }

// 3) 닫기 (× 버튼과 오버레이 백그라운드 클릭 둘 다)
  function close() {
    overlay.classList.remove('visible');
    document.body.style.overflow = '';
  }

  btnOpen.addEventListener('click', e => { e.preventDefault(); open(); });

  btnClose.addEventListener('click', close);
  overlay.addEventListener('click', e => { if (e.target === overlay) close(); });
  document.addEventListener('keydown', e => { if (e.key === 'Escape' && overlay.classList.contains('visible')) close(); });

  tabs.forEach(tab => {
    tab.addEventListener('click', () => {
      tabs.forEach(t => t.classList.toggle('active', t === tab-button));
      forms.forEach(f => f.classList.toggle('active', f.id === tab.dataset.tab-button + '_form'));
    });
  });

// 4) 약관동의
  const agreeAll = document.getElementById('agreeAll');
  if (agreeAll) {
    const checks = document.querySelectorAll('.signup_agreement_group input[type = "checkbox"]:not(#agreeAll)');
    agreeAll.addEventListener('change', () => checks.forEach(cb => cb.checked = agreeAll.checked));
  }
  
});

//document.querySelectorAll('.signup-tabs .tab-button').forEach(btn => {
//  btn.addEventListener('click', () => {
//    // 1) 탭 버튼 활성화 토글
//    document.querySelectorAll('.tab-button').forEach(b => b.classList.remove('active'));
//    btn.classList.add('active');

//    // 2) 콘텐츠 보이기/숨기기
//    const target = btn.getAttribute('data-tab');
//    document.querySelectorAll('.tab-content').forEach(content => {
//      content.classList.toggle('hidden', content.id !== target);
//    });
//  });
//});
