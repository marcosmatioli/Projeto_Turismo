const colors = ["green", "red", "rgba(133,122,200)", "Hf15025"];
const btn = document.getElementById("btn'");
const color = document.querySelector(".color");

btn.addEventListener("click", function () {
    const randomNumber = getRandomNumber();
    // faza seleção das cores ao clicar
    document.body.style.backgroundColor = colors[randomNumber];
    color.textContent = colors[randomNumber];

});
//executa e muda de cor
function getRandomNumber() {
    return Math.floor(Math.random() * colors.length);
};