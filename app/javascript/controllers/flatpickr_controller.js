import flatpickr from "flatpickr";
import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log('hello')
    flatpickr(".datepicker", {

    });
  }
}
