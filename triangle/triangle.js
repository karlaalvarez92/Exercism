//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(a, b, c) {
    this.sideA = a;
    this.sideB = b;
    this.sideC = c;
  }

  isEquilateral() {
    if (this.sideA !== 0 || this.sideB !== 0 || this.sideC !== 0) {
      return this.sideA === this.sideB && this.sideA === this.sideC
        ? true
        : false;
    } else {
      return false;
    }
  }

  isIsosceles() {
    if (
      this.sideA + this.sideB < this.sideC ||
      this.sideA + this.sideC < this.sideB ||
      this.sideB + this.sideC < this.sideA
    ) {
      return false;
    } else {
      return this.sideA === this.sideB ||
        this.sideA === this.sideC ||
        this.sideB === this.sideC
        ? true
        : false;
    }
  }

  isScalene() {
    if (
      this.sideA + this.sideB < this.sideC ||
      this.sideA + this.sideC < this.sideB ||
      this.sideB + this.sideC < this.sideA
    ) {
      return false;
    } else {
    return this.sideA !== this.sideB &&
      this.sideA !== this.sideC &&
      this.sideB !== this.sideC
      ? true
      : false;
  }
}
}
