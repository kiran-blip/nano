import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("connect")
    let modal = document.querySelector(".modal");
    const overlay = document.querySelector(".overlay");
    const openModalBtn = document.querySelector(".btn-open");
    const closeModalBtn = document.querySelector(".btn-close");

    // Close modal
    const closeModal = function () {
      modal.classList.add("hidden");
      overlay.classList.add("hidden");
    };

    if (closeModalBtn) {
      closeModalBtn.addEventListener("click", closeModal);
      overlay.addEventListener("click", closeModal);
    }

    document.addEventListener("keydown", function (e) {
      if (e.key === "Escape" && !modal.classList.contains("hidden")) {
        closeModal();
      }
    });

    // Open modal
    const openModal = function () {
      modal.classList.remove("hidden");
      overlay.classList.remove("hidden");
    };
    if (openModalBtn) {
      openModalBtn.addEventListener("click", openModal);
    }

  }
}
