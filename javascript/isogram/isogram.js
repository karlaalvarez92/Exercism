//Toda esta función pasa los test unitarios sin problemas
/* export const isIsogram = string => {
  string = string.toLowerCase().replace(/[^A-Z0-9']+/gi, "");

  for (let i = 0; i < string.length; ++i) {
    for (let j = i + 1; j < string.length; ++j) {
      if (string[i] === string[j]) {
        return false;
      }
    }
  }
  return true;
}; */

//A esta le falta pasar 2 test unitarios
export const isIsogram = string => {
  string = string.toLowerCase().replace(/[^A-Z0-9']+/gi, "");
  let currentLetter = string[0];

  for (let i = 1; i < string.length; ++i) {
    if (string[i] == currentLetter) {
      return false;
    }
  }
  return true;
};
