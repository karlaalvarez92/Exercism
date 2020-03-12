export const commands = number => {
  let binaryReverse = number
    .toString(2)
    .split("")
    .reverse();

  let actions = [];
  binaryReverse.map((el, i) => {
    console.log(el, i);
    if (el == 1) {
      if (i == 4) {
        actions.reverse();
      } else {
        actions.push(ACTIONS[i]);
      }
    }
  });
  return actions;
};

const ACTIONS = ["wink", "double blink", "close your eyes", "jump"];
