// -------- HEADER RESPONSIVE -------------
const btn = document.querySelector(".toggle");
const nav = document.querySelector(".subheader");

btn.addEventListener('click', () => {
    nav.classList.toggle('active');
});
