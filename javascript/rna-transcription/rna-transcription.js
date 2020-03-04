//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// export const toRna = rna => {
//   let str = "";

//   for (let i = 0; i < rna.length; i++) {
//     if (rna[i] === "G") {
//       str += rna[i].replace("G", "C");
//     } else if (rna[i] === "C") {
//       str += rna[i].replace("C", "G");
//     } else if (rna[i] === "T") {
//       str += rna[i].replace("T", "A");
//     } else {
//       str += rna[i].replace("A", "U");
//     }
//   }
//   return str;
// };

export const toRna = rna => {
  return rna.split('').map((value) => NUCLEOTIDES[value]).join('')
};

const NUCLEOTIDES = {
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U",
}