// app/javascript/controllers/favorite_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  // Connect this controller to a "favorite" button
  static targets = ["heartIcon"];

  connect() {
    // Your favorite logic goes here
    console.log("Item favorited!");
  }

  // The action to be called when the "favorite" button is clicked
  favorite(event) {
    // Toggle the heart icon class based on the favorite status
    this.heartIconTarget.classList.toggle("fa-regular");
    this.heartIconTarget.classList.toggle("fa-solid");
  }
}
