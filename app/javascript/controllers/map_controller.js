import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
    connect() {
      // console.log('API Key:', this.apiKeyValue);
      // console.log('Markers:', this.markersValue);
      // console.log(this.markersValue);
      mapboxgl.accessToken = this.apiKeyValue

      this.map = new mapboxgl.Map({
        container: this.element,
        style: "mapbox://styles/mapbox/streets-v10"
      })

      if (this.hasMarkersValue) {
        this.#addMarkersToMap()
        this.#fitMapToMarkers()
      }
      this.myLocation()
    }

    #addMarkersToMap () {
      console.log(this.markersValue);
      this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(this.map)
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
}
