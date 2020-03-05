//Necesito iterar mi string y comparar las letras,
//sumar las letras que sean iguales y retornar #Letra,
//si la letra es diferente cortar el contador y regresar la
//letra siguiente

//Pasa los test de encode
/* export const encode = string => {
  let count = 1;
  let encoding = "";
  let prev = "";

  string.split("").forEach(char => {
    if (char !== prev) {
      if (count == 1) {
        encoding += prev;
        count = 1;
        prev = char;
      } else {
        encoding += count + prev;
        count = 1;
        prev = char;
      }
    } else {
      count++;
    }
  });
  encoding += count + prev;
  console.log(string, encoding); */

export const encode = string => {
  let prev = string[0],
    count = 1,
    encoding = "";

  for (let i = 1; i <= string.length; i++) {
    if (string[i] !== prev) {
      if (count == 1) {
        encoding += prev;
        count = 1;
        prev = string[i];
      } else {
        encoding += count + prev;
        count = 1;
        prev = string[i];
      }
    } else {
      count++;
    }
  }
  encoding += count + prev;
  //Cuando se detenía en el último carácter me escribía el 1 antes de la letra.
  encoding = encoding.replace("NaN", "");
  return encoding;
};

export const decode = encoded => {
  let count = "";
  let decoding = "";

  encoded.split("").forEach(char => {
    if (char.match(/\d/)) {
      count += char;
      return;
    }

    count = count ? parseInt(count, 10) : 1;

    for (let i = 0; i < count; i += 1) {
      decoding += char;
    }
    count = "";
  });

  return decoding;
};
