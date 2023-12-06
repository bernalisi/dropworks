import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["cards", "results"]

  connect() {
  }

  update(event) {
    const user_input = event.currentTarget[0].value
    const index_url = event.currentTarget.action
    const endpoint = `${index_url}?query=${user_input}`

    event.preventDefault()

    fetch(endpoint, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.resultsTarget.innerHTML = data
    })
  }
}
