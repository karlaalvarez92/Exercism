//
// This is only a SKELETON file for the 'Perfect Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const classify = (number) => {
 const
 PerfectNumber= 'perfect',
 AbundantNumber= 'abundant',
 DeficentNumber= 'deficient',
 NoNaturalNumber= 'Classification is only possible for natural numbers.',
 
 isNaturalNumber=(number) => number > 0,
 isPerfectNumber=(sumOfFactors, number)=> sumOfFactors == number,
 isAbundantNumber=(sumOfFactors, number)=> sumOfFactors > number,
 isDeficentNumber=(sumOfFactors, number)=> sumOfFactors < number;

 let sumOfFactors=0;

 if(!isNaturalNumber(number))throw new Error(NoNaturalNumber);

 for(let i=0; i<= number/2; i++){
    if(number % i == 0)
      sumOfFactors += i
  };

if(isPerfectNumber(sumOfFactors, number)){return PerfectNumber}
if(isAbundantNumber(sumOfFactors, number)){return AbundantNumber}
if(isDeficentNumber(sumOfFactors, number)){return DeficentNumber}

};
