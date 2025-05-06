// src/main/webapp/resources/js/loginPopup.js

document.addEventListener('DOMContentLoaded', () => {
  const overlay = document.getElementById('login_popup_overlay');
  const btnOpen = document.getElementById('btnLoginPopup');				// main.jsp
  const btnClose = document.getElementById('close_login_popup');

  function open() {
    overlay.classList.add('visible');
    document.body.style.overflow = 'hidden';
  }
  function close() {
    overlay.classList.remove('visible');
    document.body.style.overflow = '';
  }

  btnOpen.addEventListener('click', e => { e.preventDefault(); open(); });
  btnClose.addEventListener('click', close);
  overlay.addEventListener('click', e => { if (e.target === overlay) close(); });
  document.addEventListener('keydown', e => { if ((e.key==='Escape') && overlay.classList.contains('visible')) close(); });
});
