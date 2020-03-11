/*Por cada elemento de la cadena el map retorna el valor coincidente 
y lo une en un string. */
export const toRna = rna => {
  return rna
    .split("")
    .map(value => NUCLEOTIDES[value])
    .join("");
};

const NUCLEOTIDES = {
  G: "C",
  C: "G",
  T: "A",
  A: "U"
};

// Primera solución encontrada, pasa todos los test

/* export const toRna = rna => {
  let str = "";

  for (let i = 0; i < rna.length; i++) {
    if (rna[i] === "G") {
      str += rna[i].replace("G", "C");
    } else if (rna[i] === "C") {
      str += rna[i].replace("C", "G");
    } else if (rna[i] === "T") {
      str += rna[i].replace("T", "A");
    } else {
      str += rna[i].replace("A", "U");
    }
  }
  return str;
}; */
