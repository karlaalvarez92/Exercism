export const answer = question => {
  let clean = question
    .replace(/(What\sis\s?)/g, "")
    .replace("?", "")
    .replace(/(by)/g, "")
    .replace(/(plus)/g, "+")
    .replace(/(minus)/g, "-")
    .replace(/(multiplied)/g, "*")
    .replace(/(divided)/g, "/")
    .replace(/\s+/g, " ");

  console.log(question, [clean]);

  let array = question.split(" ");
  if (array[0] !== "What" || clean.match(/[A-Za-z]/g)) {
    throw new Error("Unknown operation");
  }

  if (!clean.match(/[A-Za-z\+\-\*\/]/g)) {
    return Number(clean);
  }

  if (
    question.match(/(\d\s\d)/g) ||
    !question.match(
      /-?\d+/g
    ) /*||
    //!clean.match(/(-?\d+\s)[\+\-\*\/]\s(-?\d+)/g)

    //Al parecer este pedacito no es necesario||
    clean == " "*/
  ) {
    throw new Error("Syntax error");
  }

  let firstOperation = eval(
    clean
      .split(" ")
      .slice(0, 3)
      .join(" ")
  );

  let secondOperation = clean
    .split(" ")
    .slice(3, 5)
    .join(" ");

  console.log(question, clean);

  return eval(firstOperation + secondOperation);
};
