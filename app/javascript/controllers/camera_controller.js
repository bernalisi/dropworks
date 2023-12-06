import { Controller } from "@hotwired/stimulus"
import QrScanner from 'qr-scanner';

// Connects to data-controller="camera"
export default class extends Controller {

  static targets = ["reader", "result"]

  connect() {

      this.scanned = false

    this.qrScanner = new QrScanner(this.readerTarget,
      result => this.createTag(result),
      {
        highlightCodeOutline: true
      }
    )

    this.qrScanner.start();

  }

    createTag(url) {
      console.log(url)
    const finalurl = url.data
        this.qrScanner.stop();
        window.location.replace(finalurl);
    }

    testClick() {
      console.log("working")
    }
}
