import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
    connect() {
      mapboxgl.accessToken = this.apiKeyValue

      this.map = new mapboxgl.Map({
        container: this.element,
        style: "mapbox://styles/mapbox/streets-v10"
      })

      this.markersArray = []

      if (this.hasMarkersValue) {
        this.#addMarkersToMap()
        this.#fitMapToMarkers()
      }
      this.myLocation()
    }

    #addMarkersToMap () {
      let currentMarker = null;

      this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

        const mapMarker = new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(this.map)

          mapMarker.getElement().addEventListener("click", () => {
            // Check if there is a currently selected marker
            if (currentMarker) {
              // Reset the color of the previously selected marker
              this.changeMarkerColor(currentMarker, '#3FB1CE');
            }

            // Update the color of the clicked marker
            this.changeMarkerColor(mapMarker, '#0500FF');

            // Set the current marker to the clicked marker
            currentMarker = mapMarker;
          });

          this.markersArray.push(mapMarker);
      })
    }

    #fitMapToMarkers() {
      const bounds = new mapboxgl.LngLatBounds()
      this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    }

    myLocation() {
      // Add geolocate control to the map.
      this.map.addControl(new mapboxgl.GeolocateControl({

          positionOptions: {
              enableHighAccuracy: true
          },
          // When active the map will receive updates to the device's location as it changes.
          trackUserLocation: true,
          // Draw an arrow next to the location dot to indicate which direction the device is heading.
          showUserHeading: true,
        }))
    }

    changeMarkerColor(marker, color) {
      // Change marker color
      const svg = marker.getElement().querySelector("svg");
      const path = svg.querySelector("path");
      path.style.fill = color;
      svg.style.fill = color;
    }
}
