/*¿Mi string contiene todas las letras del abcdario? 
Método every() revisa si cada letra está incluída en ABC */
export const isPangram = sentence => {
  return ABC.every(letter => {
    return sentence.toLowerCase().includes(letter);
  });
};
const ABC = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];
