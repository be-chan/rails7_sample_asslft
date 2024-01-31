import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cat"
export default class extends Controller {
  connect() {
    
  }
  click() {
    console.log("クリックテスト")
  }

  
}
