// app/javascript/controllers/favorite_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["heartIcon", "saveText];

  connect() {
    console.log("Item favorited!");
  }

  favorite() {
    const heartIcon = this.heartIconTarget;
    const saveText = this.saveTextTarget;

    // Toggle the heart icon class based on the favorite status
    heartIcon.classList.toggle("bi-bookmark-heart-fill");
    heartIcon.classList.toggle("bi-bookmark-heart");

    // Update the text content based on the class of the heart icon
    if (heartIcon.classList.contains("bi-bookmark-heart-fill")) {
      saveText.textContent = "Saved";
    } else {
      saveText.textContent = "Save";
    }
  }
}
