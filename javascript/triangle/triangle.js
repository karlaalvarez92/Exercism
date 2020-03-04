export class Triangle {
  constructor(a, b, c) {
    this.sideA = a;
    this.sideB = b;
    this.sideC = c;
  }

  isInequality() {
    return (
      this.sideA + this.sideB < this.sideC ||
      this.sideA + this.sideC < this.sideB ||
      this.sideB + this.sideC < this.sideA
    );
  }

  isEquilateral() {
    if (this.sideA !== 0 || this.sideB !== 0 || this.sideC !== 0) {
      return this.sideA === this.sideB && this.sideA === this.sideC;
    } else {
      return false;
    }
  }

  isIsosceles() {
    if(this.isInequality()){
      return false;
    } else {
      return (
        this.sideA === this.sideB ||
        this.sideA === this.sideC ||
        this.sideB === this.sideC
      );
    }
  }

  isScalene() {
    if(this.isInequality()){
      return false;
    } else {
      return (
        this.sideA !== this.sideB &&
        this.sideA !== this.sideC &&
        this.sideB !== this.sideC
      );
    }
  }
}
