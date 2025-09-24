const MONTHS = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

export function monthFromDate(date: string): string | undefined {
  const _date = new Date(date);
  console.log(_date);
  return MONTHS[_date.getMonth()];
}
