// we need to import sendMessage from our client/chat.js
import { sendMessage } from "client/chat";
import "./message-form.css";

function submitMessage(input) {
  // Invokes sendMessage, that, in turn, invokes Ruby send_message method
  // that will create a Message instance with ActiveRecord
  sendMessage(input.value);

  // eslint-disable-next-line
  input.value = "";
  input.focus();
}

const form = document.querySelector(".js-message-form");

if (form) {
  const input = form.querySelector(".js-message-form--input");
  const submit = form.querySelector(".js-message-form--submit");

  // You can send a message with cmd/ctrl+enter
  input.addEventListener("keydown", event => {
    if (event.keyCode === 13 && event.metaKey) {
      event.preventDefault();
      submitMessage(input);
    }
  });

  // Or by cicking a button
  submit.addEventListener("click", event => {
    event.preventDefault();
    submitMessage(input);
  });
}
