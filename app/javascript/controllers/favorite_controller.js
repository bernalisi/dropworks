// app/javascript/controllers/favorite_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["heartIcon", "saveText", "reviewButton"];

  connect() {
    this.checkReviewStatus();
  }

  checkReviewStatus() {
    const heartIcon = this.heartIconTarget;
    const reviewButton = this.reviewButtonTarget;

    // Check if the Save text content is "Saved"
    const reviewEnabled = heartIcon.classList.contains("bi-bookmark-heart-fill");
    console.log(reviewButton);
    // Optionally, update the review button state based on the reviewEnabled status
    if (reviewEnabled) {
      reviewButton.style.pointerEvents = "auto"; // Enable click events
      reviewButton.style.opacity = "1"; // Optionally, reset opacity
    } else {
      reviewButton.style.pointerEvents = "none"; // Disable click events
      reviewButton.style.opacity = "0.5"; // Optionally, reduce opacity to visually indicate it's disabled
    }
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
    // Update the review button status after changing the Save text content
    this.checkReviewStatus();
  }
}
