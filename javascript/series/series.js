export class Series {
  constructor(string) {
    this.digitsArray = string.split("").map(element => Number(element));
  }

  get digits() {
    return this.digitsArray;
  }

  slices(n) {
    if (this.digitsArray.length < n) {
      throw new Error("Slice size is too big.");
    }

    let seriesArray = [];

    for (let i = 0; i <= this.digitsArray.length - n; i++) {
      seriesArray.push(this.digitsArray.slice(i, i + n));
    }
    return seriesArray;
  }
}
