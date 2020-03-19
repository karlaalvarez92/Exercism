export const primeFactors = number => {
  let primes = [];
  let i = 2;

  while (i <= number) {
    let quotient = number / i;

    if (number % i == 0) {
      number = quotient;
      primes.push(i);
    } else {
      i++;
    }
  }
  return primes;
};
