// src/main/webapp/resources/js/signupPopup.js
document.addEventListener('DOMContentLoaded', () => {
  const overlay = document.getElementById('signup_popup_overlay');
  const btnOpen = document.getElementById('btnSignupPopup');
  const btnClose = document.getElementById('close_signup_popup');
  const tabs = document.querySelectorAll('.signup_tabs .tab');
  const forms = document.querySelectorAll('.signup_form');

  function open() {
    tabs.forEach(t => t.classList.toggle('active', t.dataset.tab==='personal'));
    forms.forEach(f => f.classList.toggle('active', f.id==='personal_form'));
    overlay.classList.add('visible');
    document.body.style.overflow='hidden';
  }
  function close() {
    overlay.classList.remove('visible');
    document.body.style.overflow='';
  }

  btnOpen.addEventListener('click', e => { e.preventDefault(); open(); });
  btnClose.addEventListener('click', close);
  overlay.addEventListener('click', e => { if (e.target===overlay) close(); });
  document.addEventListener('keydown', e => { if (e.key==='Escape' && overlay.classList.contains('visible')) close(); });

  tabs.forEach(tab => {
    tab.addEventListener('click', () => {
      tabs.forEach(t=>t.classList.toggle('active', t===tab));
      forms.forEach(f=>f.classList.toggle('active', f.id===tab.dataset.tab+'_form'));
    });
  });

  const agreeAll = document.getElementById('agreeAll');
  if (agreeAll) {
    const checks = document.querySelectorAll('.signup_agreement_group input[type="checkbox"]:not(#agreeAll)');
    agreeAll.addEventListener('change', ()=>checks.forEach(cb=>cb.checked = agreeAll.checked));
  }
});
