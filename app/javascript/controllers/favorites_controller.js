import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  mark() {
    if (this.element.dataset.marked === "true") {
      this.element.dataset.marked = "false";
      this.element.setAttribute("fill", "#CED4DA");
    } else {
      this.element.dataset.marked = "true";
      this.element.setAttribute("fill", "red");
    }
  }
}
