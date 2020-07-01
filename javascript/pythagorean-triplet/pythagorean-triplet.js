export class Triplet {
  constructor(a, b, c) {
    this._a = a;
    this._b = b;
    this._c = c;
  }

  sum() {
    return this._a + this._b + this._c;
  }

  product() {
    return this._a * this._b * this._c;
  }

  isPythagorean() {
    return (
      this._a < this._b < this._c &&
      Math.pow(this._a, 2) + Math.pow(this._b, 2) == Math.pow(this._c, 2)
    );
  }

  static where() {
    throw new Error("Remove this statement and implement this function");
  }
}
