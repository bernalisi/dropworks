// app/javascript/controllers/favorite_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  // Connect this controller to a "favorite" button
  static targets = ["heartIcon", "saveText"];

  connect() {
    // Your favorite logic goes here
    console.log("Item favorited!");
  }

  // The action to be called when the "favorite" button is clicked
  favorite(event) {
    // Toggle the heart icon class based on the favorite status
    this.heartIconTarget.classList.toggle("bi-bookmark-heart-fill");
    this.heartIconTarget.classList.toggle("bi-bookmark-heart");
    if (this.saveTextTarget) {
      if (this.saveTextTarget.innerHTML === "Save") {
        this.saveTextTarget.innerHTML = "Saved"
      } else {
        this.saveTextTarget.innerHTML = "Save"
      }
    } else {
      // Code to be executed if the element doesn't exist
    }
  }
}
