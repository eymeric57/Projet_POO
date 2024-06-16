// Converting date to input format





// BTN NAV CHOIX DU COMPTE 

let var1 = "loueur";
let var2 = "voyageur";
let pos = true
word1.innerHTML = var2;

let round = document.getElementById("round");

round.addEventListener("click", function () {


    if (pos == true) {
        round.classList.remove("roundPos1");
        round.classList.add("roundPos2");
        pos = false;
        word1.innerHTML = var1;
       
        console.log(pos);
    } else if (pos == false){
        round.classList.remove("roundPos2");
        round.classList.add("roundPos1");
        pos = true
       
        word1.innerHTML = var2;
        console.log(pos);
    }


})

