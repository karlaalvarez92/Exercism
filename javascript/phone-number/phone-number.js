//
// This is only a SKELETON file for the 'Phone Number' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const clean = string => {
  const
    LESS_THAN_TEN_NUMBERS= "Incorrect number of digits",
    ELEVEN_NUMBERS_MUST_START_WITH_ONE= "11 digits must start with 1",
    MORE_THAN_ELEVEN_NUMBERS = "More than 11 digits",
    INCLUDE_LETTERS =
     "Letters not permitted"


    ELEVEN_NUMBERS_START_WITH_ZERO=




  let normalizePhone = string.replace(/[-.+\(\)\s]/g, "");
  //console.log(normalizePhone, normalizePhone.substring(1));
  if (normalizePhone.length < 10) {
    throw new Error("Incorrect number of digits");
  } else if (normalizePhone.match(/[A-Za-z]/g)) {
    throw new Error("Letters not permitted");
  } else if (normalizePhone.match(/[^0-9]/g)) {
    throw new Error("Punctuations not permitted");
  } else if (normalizePhone.length == 11 && normalizePhone[0] !== "1") {
    throw new Error("11 digits must start with 1");
  } else if (
    (normalizePhone.length == 11 && normalizePhone[1] == "0") ||
    (normalizePhone.length == 10 && normalizePhone[0] == "0")
  ) {
    throw new Error("Area code cannot start with zero");
  } else if (
    (normalizePhone.length == 10 && normalizePhone[0] == "1") ||
    (normalizePhone.length == 11 && normalizePhone[0] == "1")
  ) {
    throw new Error("Area code cannot start with one");
  } else if (normalizePhone.length == 11 && normalizePhone[0] == "1") {
    return normalizePhone.substring(1);
  } else if (normalizePhone.length > 11) {
    throw new Error("More than 11 digits");
  } else {
    return normalizePhone;
  }
  //.split(" ");
  //phoneInArray = console.log(normalizePhoneinArray);
  /* let array = string
    .replace(/-./, " ")
    .trim()
    .split(" ");
  let newArray = [];
  let newString = "";
  let letters = /[A-Za-z]+/gi;
  let signs = /[^A-Za-z0-9']+/gi;
  //console.log(array);
  for (let i = array.length - 1; i > array.length - 4; i--) {
    newArray.unshift(array[i]);
  }
  newString = newArray.join("");

   if (newString.match(letters)) {
    throw new Error("Letters not permitted");
  } else if (newString.match(signs)) {
    throw new Error("Punctuations not permitted");
  } else  if (
    newString.length < 10
  ) {
    throw new Error("Incorrect number of digits");
  } else if (newString.length > 11) {
    throw new Error("More than 11 digits");
  } else if (newString.length == 11 && newString[0] !== "1") {
    throw new Error("11 digits must start with 1");
  } else if (newString.length == 11 && newString[0] == 1) {
    return newString.substring(1);
  } else {
    console.log(string, newString);
    return newString;
  } */
};
