export const reverseString = string => {
  if (string) {
    let reverseString = string.split("").reverse().toString();

    let replaceAll = (text, search, replace) => {
      while (text.toString().indexOf(search) != -1)
        text = text.replace(search, replace);
      return text;
    };
    return replaceAll(reverseString, ",", "");
  } else {
    return "";
  }
};
