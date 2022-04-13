import { Controller } from "@hotwired/stimulus"
import { get, post, put, patch, destroy } from '@rails/request.js'

export default class extends Controller {
  static targets = ["stateSelect"]
  change(event) {
    let country = event.target.selectedOptions[0].value
    let target =  this.stateSelectTarget.id

    get(`/addresses/states?target=${target}&country=${country}`, {
      responseKind: "turbo-stream"
    })
  }
}
