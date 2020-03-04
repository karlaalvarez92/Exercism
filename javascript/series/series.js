//Para qué es este import???
import { threadId } from "worker_threads";

export class Series {
  constructor(string) {
    this.numbersArray = string.split("").map(element => Number(element));
  }

  get digits() {
    return this.numbersArray;
  }

  slices(n) {
    if (this.numbersArray.length < n) {
      throw new Error("Slice size is too big.");
    }

    let seriesArray = [];

    for (let i = 0; i <= this.numbersArray.length - n; i++) {
      seriesArray.push(this.numbersArray.slice(i, i + n));
    }
    return seriesArray;
  }
}
