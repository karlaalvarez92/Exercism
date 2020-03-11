export const gigasecond = date => {
  return new Date(date.getTime() + GIGASECOND * MILISECONDS);
};

const GIGASECOND = 1000000000;
const MILISECONDS = 1000;
