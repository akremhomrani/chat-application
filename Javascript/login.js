const form = document.querySelector(".login form"),
    continueBtn = form.querySelector(".button input"),
    errorText = form.querySelector(".error-txt");


form.onsubmit = (e) => {
    e.preventDefault();
}

continueBtn.onclick = () => {
    let xhr = new XMLHttpRequest(); // creation xml objet
    xhr.open("POST", "PHP/login.php", true);
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                let data = xhr.response;
                if (data[2].localeCompare("s") == 0) {
                    location.href = "users.php";
                } else {
                    errorText.style.display = "block";
                    errorText.textContent = data;
                }
            }
        }

    }
    // we have to send the form data through ajax to php
    let formData = new FormData(form); //creation new formdata obejct

    xhr.send(formData); //sending the form data to php

}