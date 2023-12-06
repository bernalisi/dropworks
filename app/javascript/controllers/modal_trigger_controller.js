import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  open(event) {
    event.preventDefault()
    const modal = new bootstrap.Modal(document.getElementById('imageModal'));
    modal.show();
  }
}
