/*Revisar como poner los if dentro de métodos y hacer lo mismo con un map
  Èxito!!! */

export class RotationalCipher {
  static rotate(string, rotate) {
    let cipherString = "";

    for (let i = 0; i < string.length; i++) {
      let characterCode = string[i].charCodeAt(0);
      if (characterCode >= 65 && characterCode <= 90) {
        characterCode += rotate;
        if (characterCode > 90) characterCode -= 26;
      } else if (characterCode >= 97 && characterCode <= 122) {
        characterCode += rotate;
        if (characterCode > 122) characterCode -= 26;
      }
      cipherString += String.fromCharCode(characterCode);
    }
    return cipherString;
  }
}
