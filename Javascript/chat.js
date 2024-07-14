const form = document.querySelector(".typing-area"),
    inputField = form.querySelector(".input-field"),
    sendBtn = form.querySelector("button");
const chatBox = document.querySelector(".chat-box");

form.onsubmit = (e) => {
    e.preventDefault();
}

sendBtn.onclick = () => {
    let xhr = new XMLHttpRequest(); // creation xml objet
    xhr.open("POST", "PHP/insert-chat.php", true);
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                inputField.value = "";
                scrollToBottom();



            }
        }

    }
    // we have to send the form data through ajax to php
    let formData = new FormData(form); //creation new formdata obejct
    xhr.send(formData); //sending the form data to php
}
chatBox.onmouseenter = () => {
    chatBox.classList.add("active");
}
chatBox.onmouseleave = () => {
    chatBox.classList.remove("active");
}
setInterval(() => {


    let xhr1 = new XMLHttpRequest(); // creation xml objet
    xhr1.open("POST", "PHP/get-chat.php", true);
    xhr1.onload = () => {
        if (xhr1.readyState === XMLHttpRequest.DONE) {
            if (xhr1.status === 200) {
                let data = xhr1.response;
                chatBox.innerHTML = data;
                if (!chatBox.classList.contains("active")) {
                    scrollToBottom();
                }
            }
        }

    }
    // we have to send the form data through ajax to php
    let formData = new FormData(form); //creation new formdata obejct
    xhr1.send(formData); //sending the form data to php

}, 500);

function scrollToBottom() {
    chatBox.scrollTop = chatBox.scrollHeight;
}