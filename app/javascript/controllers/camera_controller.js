import { Controller } from "@hotwired/stimulus"
import QrScanner from 'qr-scanner';

// Connects to data-controller="camera"
export default class extends Controller {

  static targets = ["reader", "result"]

  connect() {
    console.log("hi josh hi anna")


      this.scanned = false

    // console.log(this.element)

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
      url = "https://dropworks-ae9dcc6994cc.herokuapp.com/index"
      const atag = `<a href=${url}> Confirm </a>`
        this.readerTarget.insertAdjacentHTML("beforeend", atag)

        this.qrScanner.stop();
    }


    testClick() {
      console.log("working")
    }

}
