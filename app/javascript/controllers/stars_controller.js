import { Controller } from "stimulus"
import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

export default class extends Controller {
  static targets = [ "input" ]

  connect() {
    console.log(this.inputTarget)
    $('#review_rating').barrating({
      theme: 'css-stars'
    });
  }
}
