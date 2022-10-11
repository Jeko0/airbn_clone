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
      window.navigator.geolocation.getCurrentPosition((pos) => {
        this.element.dataset.latitude = pos.coords.latitude;
        this.element.dataset.longitude = pos.coords.longitude;

        this.propertyTargets.forEach((propTarget) => {
          let distanceFrom = getDistance(
            {
              latitude: pos.coords.latitude,
              longitude: pos.coords.longitude,
            },

            {
              latitude: propTarget.dataset.latitude,
              longitude: propTarget.dataset.longitude,
            }
          );

          propTarget.querySelector("[data-distance]").innerHTML = `${Math.round(convertDistance(distanceFrom, "km"))} kilometers away`;
        });
      });
    } else {
      this.propertyTargets.forEach((propTarget) => {
        let distanceFrom = getDistance(
          {
            latitude: this.element.dataset.latitude,
            longitude: this.element.dataset.longitude,
          },

          {
            latitude: propTarget.dataset.latitude,
            longitude: propTarget.dataset.longitude,
          }
        );

        propTarget.querySelector("[data-distance]").innerHTML = `${Math.round(convertDistance(distanceFrom, "km"))} kilometers away`;
      });
    }
  }
}
