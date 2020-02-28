export const transform = oldStorage => {
  let key;
  let letters;
  let newStorage = {};
  for (key in oldStorage) {
    letters = oldStorage[key];
    console.log(letters);
    for (let i = 0; i < letters.length; i++) {
      let letter = letters[i].toLowerCase();
      newStorage[letter] = Number(key);
    }
  }
  return newStorage;
};
