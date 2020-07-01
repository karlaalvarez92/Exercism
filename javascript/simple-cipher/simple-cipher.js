//
// This is only a SKELETON file for the 'Simple Cipher' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
const keys = [
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

export class Cipher {
  constructor(string) {
    this._key = () => {
      let array = [];
      for (let i = 0; i < keys.length; i++) {
        array.push(keys[Math.floor(Math.random() * keys.length)]);
      }
      return array.join("");
    };
    /* console.log(this._key().substr(0, string.length));
    this.keyToUse = this._key().substr(0, string.length);
 */
    this._encode = () => {
      let cipherString = "";

      for (let i = 0; i < string.length; i++) {
        let characterCode = string[i].charCodeAt(0);
        if (characterCode >= 65 && characterCode <= 90) {
          characterCode += this._key();
          if (characterCode > 90) characterCode -= 26;
        } else if (characterCode >= 97 && characterCode <= 122) {
          characterCode += this._key();
          if (characterCode > 122) characterCode -= 26;
        }
        cipherString += String.fromCharCode(characterCode);
      }

      return cipherString;
    };
  }

  encode() {
    return this._encode();
  }

  decode() {
    //throw new Error("Remove this statement and implement this function");
  }

  get key() {
    return this._key();
  }
}
