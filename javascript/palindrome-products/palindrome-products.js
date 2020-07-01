export class Palindromes {
  static generate(parameter) {
    let minFactor = parameter.minFactor;
    let maxFactor = parameter.maxFactor;

    let isPalindrome = product => {
      return (
        Number(
          String(product)
            .split("")
            .reverse()
            .join("")
        ) == product
      );
    };

    let palindromes = [];

    for (let i = minFactor; i <= maxFactor; i++) {
      for (let j = minFactor; j <= maxFactor; j++) {
        let product = i * j;

        if (isPalindrome(product)) {
          /*console.log()*/
          if (!palindromes[product]) {
            palindromes.push({ value: product, factors: [i, j] });
            console.log(product);
          }
          /* if  (
              !palindromes[product].factor.includes(i) ||
              !palindromes[product].factor.includes(j)
            ) {
              palindromes[product].factor.push([i, j]);
            } */

          /*  
          } */

          /*  console.log(product); */
          /* if (!palindromes[product]) {
            palindromes.product = [];
          }

          */
        }
      }
    }
    console.log(palindromes);
    /* while (currentValue < numbers.maxFactor) {
      if (i < numbers.maxFactor) {
        i++;
      } else {
        currentValue++;
      }
      product = currentValue * i;
      console.log(currentValue, i, product); */
    /* if (
        Number(
          String(product)
            .split("")
            .join("")
        ) ==
        Number(
          String(product)
            .split("")
            .reverse()
            .join("")
        )
      ) {
        palindromeProducts.push({ value: product, factors: [currentValue, i] });
      }
      console.log(palindromeProducts);
      console.log(palindromeProducts[0].value); */
    /* return {
        smallest: {
          value: palindromeProducts[0].value,
          factors: [palindromeProducts[0].factors]
        },
        largest: palindromeProducts[palindromeProducts.lastIndexOf() - 1]
      }; */
    /* } */
  }
}
