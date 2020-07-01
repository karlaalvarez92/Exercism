export const answer = (string) => {
  let sanitized = sanitize(string);
  let UknowOperationError = new Error("Syntax error");
  console.log(sanitized);
  console.log(eval(sanitized), "<---- eval sanitized");

  if (eval(sanitized) !== undefined) {
    console.log("pasa");
    return eval(sanitized);
  } else {
    console.log("no pasa");
  }
  // return result;
};
export const getAllSigns = (array) => {
  return array.filter((element) => element === "/" || "+" || "-" || "*");
};
export const doOperation = (arraySan) => {
  let result1 = arraySan.split("/");
  let splited = arraySan.split("");
  let result2 = getAllSigns(splited);

  console.log(result1);
  console.log(splited);
};

export const sanitize = (string) => {
  return string
    .replace("What ", "")
    .replace("is ", "")
    .replace("?", "")
    .replace(/by/g, "")
    .split("plus")
    .join("+")
    .split("minus")
    .join("-")
    .split("divided")
    .join("/")
    .split("multiplied")
    .join("*");
};
// export const getOperation = array => {
//   console.log("from getOperation", array[3]);
//   return array[3];
// };
export const getNumbers = (string) => string.replace(/\D/g, "");

export const stringToArr = (string) => string.split(" +");
