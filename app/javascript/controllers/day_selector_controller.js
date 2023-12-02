// app/javascript/controllers/day_selector_controller.js

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['dropdown'];

  connect() {
    // Initialize selectedDay as an empty string
    this.selectedDay = '';
  }

  capitalize() {
    // Add the capitalize method to the selectedDay
    if (this.selectedDay) {
      return this.selectedDay.charAt(0).toUpperCase() + this.selectedDay.slice(1);
    }
    return '';
  }

  toggleDropdown() {
    this.dropdownTarget.classList.toggle('open');
  }

  selectDay(event) {
    event.preventDefault();
    const selectedDay = event.target.getAttribute('data-day');
    this.selectedDay = selectedDay;
    this.element.querySelector('button').textContent = this.capitalize();
    this.dropdownTarget.classList.remove('open');
  }
}
