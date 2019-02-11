document.addEventListener('DOMContentLoaded', domContentLoadedEvent => {

let btn = document.querySelector(".btn")
btn.addEventListener("click",(event) => {
    event.preventDefault();
    alert("thanks for searching")
  
})
})