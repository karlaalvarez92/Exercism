export const isPaired = string => {
  string = string.replace(/[^{}\(\)\]\[]/g, "");
  console.log(string);
  if (string.length % 2 !== 0) return false;

  while (
    string.includes("{}") ||
    string.includes("[]") ||
    string.includes("()")
  ) {
    string = string
      .replace("{}", "")
      .replace("[]", "")
      .replace("()", "");
  }
  return string === "";
};
