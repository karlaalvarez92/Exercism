export class NucleotideCounts {
  static parse(string) {
    let array = string.split("");
    const NUCLEOTIDE = ["A", "C", "G", "T"];
    let counter = [0, 0, 0, 0];

    array.map(el => {
      if (!NUCLEOTIDE.includes(el)) {
        throw new Error("Invalid nucleotide in strand");
      } else {
        counter[NUCLEOTIDE.indexOf(el)] += 1;
      }
    });
    return counter.join(" ");
  }
}
