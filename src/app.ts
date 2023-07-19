import { monthFromDate } from './month-from-date.js';

class Hello {
  private message: string;

  constructor(message: string) {
    this.message = message;
    console.log('Hello!');
  }
}

try {
  const dateString = '2022-03-01';
  console.log(monthFromDate(dateString));
} catch (err) {
  console.error(err);
}
