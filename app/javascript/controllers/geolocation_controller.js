import { Controller } from "@hotwired/stimulus";
import { getDistance, convertDistance } from "geolib";

export default class extends Controller {
  static targets = ["property"];

  connect() {
    window.navigator.geolocation.getCurrentPosition((pos) => {
      this.element.dataset.latitude = pos.coords.latitude;
      this.element.dataset.longitude = pos.coords.longitude;

      this.propertyTargets.forEach((propTarget) => {
        let distanceFrom = getDistance(
          { latitude: pos.coords.latitude, longitude:  pos.coords.longitude },
          { latitude: propTarget.dataset.latitude, longitude: propTarget.dataset.longitude},
        );

        propTarget.querySelector('[data-distance]').innerHTML = `${ Math.round(convertDistance(distanceFrom, "km")) } kilometers away`
      });
    });
  }
}
