export const classify = number => {
  const PerfectNumber = "perfect",
    AbundantNumber = "abundant",
    DeficentNumber = "deficient",
    OnlyNaturalNumber = "Classification is only possible for natural numbers.",
    isNaturalNumber = number => number > 0,
    isPerfectNumber = (sumOfFactors, number) => sumOfFactors == number,
    isAbundantNumber = (sumOfFactors, number) => sumOfFactors > number,
    isDeficentNumber = (sumOfFactors, number) => sumOfFactors < number;

  let sumOfFactors = 0;

  if (!isNaturalNumber(number)) throw new Error(OnlyNaturalNumber);

  for (let i = 0; i <= number / 2; i++) {
    if (number % i == 0) sumOfFactors += i;
  }

  if (isPerfectNumber(sumOfFactors, number)) {
    return PerfectNumber;
  }
  if (isAbundantNumber(sumOfFactors, number)) {
    return AbundantNumber;
  }
  if (isDeficentNumber(sumOfFactors, number)) {
    return DeficentNumber;
  }
};
