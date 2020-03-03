export const parse = (string) => {
  let words = string.replace(/[^A-Z0-9']+/ig, " ").split(" ");
  let acronym="";

  for(let i=0; i<words.length; i++){
        acronym += words[i][0];
  }
  acronym= acronym.toUpperCase()
  return acronym;
};
