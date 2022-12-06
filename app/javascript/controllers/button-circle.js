import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    console.log("connected button-circle")

  changeButton() {

    const button = document.querySelector('.button-like');

    button.addEventListener('click', () => {
      button.style.backgroundColor = '#ff0000';
    });
  }
}}
