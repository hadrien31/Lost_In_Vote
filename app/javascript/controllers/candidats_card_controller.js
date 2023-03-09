import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="candidats-card"
export default class extends Controller {

  connect() {
    this.carouselList = this.element
    this.carouselItems = document.querySelectorAll('.carousel__item');
    this.elems = Array.from(this.carouselItems);
    console.log(this.elems)
  }

  moveCard(event) {
    this.state = {};

    const newActive = event.target;
    this.isItem = newActive.closest('.carousel__item');

    if (!this.isItem || newActive.classList.contains('carousel__item_active')) {
      return;
    };
    
    this.update(newActive);
  }

  update(newActive) {
    const newActivePos = newActive.dataset.pos;
    console.log(newActivePos)
    this.current = this.elems.find((elem) => elem.dataset.pos == 0);
    this.prev = this.elems.find((elem) => elem.dataset.pos == -1);
    this.next = this.elems.find((elem) => elem.dataset.pos == 1);
    this.first = this.elems.find((elem) => elem.dataset.pos == -2);
    this.last = this.elems.find((elem) => elem.dataset.pos == 2);
    
    this.current.classList.remove('carousel__item_active');
    
    [this.current, this.prev, this.next, this.first, this.last].forEach(item => {
      this.itemPos = item.dataset.pos;

      item.dataset.pos = this.getPos(this.itemPos , newActivePos)
    });
  }

  getPos(current, active) {
    this.diff = current - active;

    if (Math.abs(current - active) > 2) {
      return -current
    }
    return this.diff;
  }
}
