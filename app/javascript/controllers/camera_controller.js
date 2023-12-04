import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="camera"
export default class extends Controller {

  static targets = ["input", "parag"]

  connect() {
    console.log(this.element)
  }

  openCamera(e){

    const allButtons = document.querySelectorAll('.navbar-icons');
    allButtons.forEach(button => {
      button.querySelector('i').classList.remove('active-item');
      button.querySelector('p').classList.remove('active-item');
    });

    this.inputTarget.click()
    e.currentTarget.classList.add("active-item")
    this.paragTarget.classList.add("active-item")
  }
}
