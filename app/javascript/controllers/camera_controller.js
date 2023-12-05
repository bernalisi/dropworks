import { Controller } from "@hotwired/stimulus"
import QrScanner from 'qr-scanner';

// Connects to data-controller="camera"
export default class extends Controller {

  static targets = ["reader", "result"]

  connect() {
    console.log(this.resultTarget)
    setTimeout(() => {

      this.scanned = false

    // console.log(this.element)
    this.qrScanner = new QrScanner(
      this.readerTarget,
      result =>
        this.createTag(result), {
      highlightCodeOutline: true
      }
    )

    qrScanner.setCamera(facingModeOrDeviceId);

    this.qrScanner.start();
    console.log(this.qrScanner)

    }, 500);

    }

    createTag(url) {
      url = "https://dropworks-ae9dcc6994cc.herokuapp.com/index"
      const atag = `<a href=${url}> Confirm </a>`
        this.readerTarget.insertAdjacentHTML("beforeend", atag)

        this.qrScanner.stop();
    }


}
