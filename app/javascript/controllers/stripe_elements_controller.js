import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  submitButtonClasses =
    "mt-4 w-full bg-indigo-600 border border-transparent rounded-md shadow-sm py-3 px-4 text-base font-medium text-white cursor-pointer";

  connect() {
    this.getStripeFormLabel().classList.add("hidden");
    this.getStripeCardElement().classList.add("mt-3");
    this.getStripeSubmitButton().className += this.submitButtonClasses;
  }

  getStripeCardElement() {
    return document.getElementById("card-element");
  }

  getStripeSubmitButton() {
    return document.querySelector(`#stripe-form input[type="submit"]`);
  }

  getStripeFormLabel() {
    return document.querySelector(`label[for="card_element"]`);
  }
}
