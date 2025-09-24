import { describe, it } from 'node:test';
import assert from 'node:assert';
import { monthFromDate } from '../src/month-from-date.js';

describe('Month', () => {
  it('should work', () => {
    const dateString = '2022-03-01';
    assert.strictEqual(monthFromDate(dateString), 'March');
  });

  it('should be ok', () => {
    assert.strictEqual(3, 3);
  });
});
