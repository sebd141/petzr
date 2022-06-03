import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { contractId: Number }
  static targets = ["posts"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ContractChannel", id: this.contractIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.contractIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    this.postsTarget.insertAdjacentHTML("beforeend", data)
    this.postsTarget.scrollTo(0, this.postsTarget.scrollHeight)
  }
}
