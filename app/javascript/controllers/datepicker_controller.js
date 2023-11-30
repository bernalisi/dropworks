import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log("connected")
    flatpickr(this.element)
  }
}
