//
// This is only a SKELETON file for the 'Secret Handshake' exercise. It's been provided as a
// convenience to get you started writing code faster.

export const commands = number => {
  let binaryNumber = number.toString(2);
  let binaryArray = binaryNumber.split("").reverse();
  let keysArray = [];
  let actions = [];

  //Intenté hacerlo con map pero el elemento era "el mismo" y me retornaba un
  //indexOf incorrecto
  for (let i = 0; i < binaryArray.length; i++) {
    if (binaryArray[i] == 1) {
      keysArray.push(i);
    }
  }

  keysArray.map(el => {
    if (el == 4) {
      actions.reverse();
    } else {
      actions.push(ACTIONS[el]);
    }
  });
  return actions;
};

const ACTIONS = {
  0: "wink",
  1: "double blink",
  2: "close your eyes",
  3: "jump"
};
