export const valid = number => {
  let cleanNumber = number.replace(/\s/g, "");
  if (number <= 1 || number.match(/[A-Za-z:#$-]/g)) {
    return false;
  }

  let array = cleanNumber.split("");
  let luhnNumber = array.map(el => parseInt(el));

  for (let i = luhnNumber.length - 2; i >= 0; i -= 2) {
    if (luhnNumber[i] * 2 > 9) {
      luhnNumber[i] = luhnNumber[i] * 2 - 9;
    } else {
      luhnNumber[i] = luhnNumber[i] * 2;
    }
  }

  let validate = luhnNumber.reduce((a, b) => a + b, 0);

  return validate % 10 == 0;
};
