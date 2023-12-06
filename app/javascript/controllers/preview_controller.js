import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preview"
export default class extends Controller {
  static targets = ["preview", "tagwrapper"]
  connect() {
    console.log()
  }

  readURLS(event){
    const imageFile = event.currentTarget.files[0]
    
    this.previewTarget.setAttribute("src", window.URL.createObjectURL(imageFile))

    this.tagwrapperTarget.classList.add("d-none")
    event.currentTarget.classList.add("d-none")
    this.previewTarget.classList.remove("d-none")
  }
}
