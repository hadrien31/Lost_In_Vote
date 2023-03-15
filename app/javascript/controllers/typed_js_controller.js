import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Pas de panique ", "Ca ne te prendra que 5 min!"],
      typeSpeed: 50,
      // loop: true
    })
  }
}
