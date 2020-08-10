document.querySelector("#rand").addEventListener("click", (event) => {
    let randomID = Math.floor(Math.random() * 1000000);
    document.querySelector("#output").innerHTML = randomID.toString().padStart(6, '0');
});