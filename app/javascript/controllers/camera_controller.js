import { Controller } from "@hotwired/stimulus"
import QrScanner from 'qr-scanner';

// Connects to data-controller="camera"
export default class extends Controller {

  static targets = ["input", "parag"]

  connect() {
    this.scanned = false

    // console.log(this.element)
    this.qrScanner = new QrScanner(
      this.inputTarget,
      result =>
        this.createTag(result), {
      highlightCodeOutline: true
      }
    )

    this.qrScanner.start();
    }

    createTag(url) {
      url = "https://dropworks-ae9dcc6994cc.herokuapp.com/index"
      const atag = `<a href=${url}> Confirm </a>`
        this.inputTarget.insertAdjacentHTML("beforeend", atag)

        this.qrScanner.stop();
    }

  openCamera(e) {

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
