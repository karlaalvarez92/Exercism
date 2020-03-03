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
 
 isntNaturalNumber=() => number <= 0,
 isPerfectNumber=()=> sumOfFactors == number,
 isAbundantNumber=()=> sumOfFactors > number,
 isDeficentNumber=()=> sumOfFactors < number;

 let sumOfFactors=0;

 if(isntNaturalNumber(number))throw new Error(NoNaturalNumber);

 for(let i=0; i<number; i++){
    if(number % i == 0)
      sumOfFactors += i
  };

if(isPerfectNumber(sumOfFactors, number)){return PerfectNumber}
if(isAbundantNumber(sumOfFactors, number)){return AbundantNumber}
if(isDeficentNumber(sumOfFactors, number)){return DeficentNumber}

};

/* if(sumOfFactors ==number){return PerfectNumber}
if(sumOfFactors < number){return DeficentNumber}
if(sumOfFactors > number){return AbundantNumber} */
