import { Component } from '@angular/core';
import { LandingPageComponent } from './landing-page/landing-page.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [LandingPageComponent],
  template: `
    <landing-page></landing-page>
  `
})
export class AppComponent {
  title = 'flex-grid-exercise';
}
