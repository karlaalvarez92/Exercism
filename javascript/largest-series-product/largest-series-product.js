export const largestProduct = (chain, size) => {
  let array = chain.split("").map(el => Number(el));
  let series = [];

  if (chain.match(/[a-zA-Z]\w+/g)) {
    throw new Error("Digits input must only contain digits");
  }
  if (size == 0) {
    return 1;
  }
  if (size < 0) {
    throw new Error("Span must be greater than zero");
  }
  if (chain.length < size) {
    throw new Error("Span must be smaller than string length");
  }

  for (let i = 0; i < array.length; i++) {
    let slice = array.slice(i, i + size);
    if (slice.length == size) {
      series.push(slice);
    }
  }
  const reducer = (accumulator, currentValue) => accumulator * currentValue;

  let products = series.map(el => el.reduce(reducer));
  products.sort((a, b) => {
    return a - b;
  });

  return products[products.length - 1];
};
