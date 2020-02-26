//
// This is only a SKELETON file for the 'Matrix' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Matrix {
  constructor(arrayOfValues) {
    this.row = [];

    arrayOfValues.split("\n").map(string => {
      this.row.push(
        string.split(" ").map(e => {
          return parseInt(e);
        })
      );
    });
    
    let arrayOfColumns = new Array(this.row[0].length).fill(null).map(e => new Array())
    this.row.map((row) => {
      row.map((el, j) => {
        return arrayOfColumns[j].push(el);
      });
    });

    this.column = arrayOfColumns;
  }

  get rows() {
    return this.row;
  }

  get columns() {
    return this.column;
  }
}
