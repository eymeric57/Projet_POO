const switchBtn = document.getElementById("switch");
const roundBtn = document.getElementById("roundBtn");
const choice = document.getElementById("choice");

switchBtn.addEventListener("change", () => {
  choice.textContent = switchBtn.checked ? "Loueur" : "Voyageur";
  choice.classList.toggle("active", switchBtn.checked);
});


// convert today date to input format

const today = new Date().toISOString().split("T")[0];

start_date.value = today;
start_date.min = today;

// tomorrow date calc

let tomorrow = new Date();
tomorrow.setDate(tomorrow.getDate() + 1);

// convert to input format
let tomorrowFormat = tomorrow.toISOString().split("T")[0];
end_date.value = tomorrowFormat;
end_date.min = tomorrowFormat;

start_date.addEventListener("change", (e) => {
  let day = new Date(e.target.value);

  if (end_date.value < start_date.value) {
    day.setDate(day.getDate() + 1);
    end_date.value = day.toISOString().split("T")[0];
  }
});

end_date.addEventListener("change", (e) => {
  let day = new Date(e.target.value);

  if (end_date.value < start_date.value) {
    day.setDate(day.getDate() - 1);
    start_date.value = day.toISOString().split("T")[0];
  }
});

let bookingCalc = () => {
  let diffTime = Math.abs(
    new Date(end_date.value) - new Date(start_date.value)
  );
  let diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

  total.textContent = diffDays * nightPrice.textContent;
};

start_date.addEventListener("change", bookingCalc);
end_date.addEventListener("change", bookingCalc);





function copierSpanDansHidden() {
  let spanValue = document.getElementById('total').innerText;
  document.getElementById('champCache').value = spanValue;
}