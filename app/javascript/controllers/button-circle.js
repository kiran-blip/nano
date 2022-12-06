import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  changeButton() {
    const button = document.querySelector('.button-circle');

    button.addEventListener('click', () => {
      button.style.backgroundColor = '#ff0000';
    });
  }
}
