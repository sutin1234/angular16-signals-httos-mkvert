import { CommonModule } from '@angular/common';
import { Component, computed, effect, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'angular16 signals';
  price = signal<number>(0)
  totalPrice = computed(() => this.price() * 3000)

  constructor() {
    effect(() => {
      console.log('signal changed!')
    })
  }
}
