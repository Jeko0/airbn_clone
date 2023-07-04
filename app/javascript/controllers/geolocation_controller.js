import { Controller } from "@hotwired/stimulus";
import { getDistance, convertDistance } from "geolib";
import { isEmpty } from "lodash-es";

export default class extends Controller {
  static targets = ["property"];

  connect() {
    if (
      isEmpty(this.element.dataset.latitude) &&
      isEmpty(this.element.dataset.longitude)
    ) {
      window.navigator.geolocation.getCurrentPosition((position) => {
        this.setUserCoordinates(position.coords);
        this.setDistanceText();
      });
    } else {
      this.setDistanceText();
    }
  }

  setUserCoordinates(coordinates) {
    this.element.dataset.latitude = coordinates.latitude;
    this.element.dataset.longitude = coordinates.longitude;
  }

  getUserCoordinates() {
    return {
      latitude: this.element.dataset.latitude,
      longitude: this.element.dataset.longitude,
    };
  }

  setDistanceText() {
    this.propertyTargets.forEach((propTarget) => {
      let distanceFrom = getDistance(
        this.getUserCoordinates(), 
        {
        latitude: propTarget.dataset.latitude,
        longitude: propTarget.dataset.longitude,
      });

      propTarget.querySelector("[data-distance]").innerHTML = `${Math.round(convertDistance(distanceFrom, "km"))} kilometers away`;
    });
  }
}
