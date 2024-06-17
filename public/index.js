// get today


const switchBtn = document.getElementById("switchBtn");
const roundBtn = document.getElementById("roundBtn");
const choice = document.getElementById("choice");

switchBtn.addEventListener("click", () => {
  switchBtn.classList.toggle("active");
  roundBtn.classList.toggle("active");
  choice.classList.toggle("active");
  if (choice.classList.contains("active")) {
    choice.textContent = "Loueur";
  } else {
    choice.textContent = "Voyageur";
  }
});