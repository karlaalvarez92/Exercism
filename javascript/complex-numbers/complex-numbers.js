import { threadId } from "worker_threads";

//
// This is only a SKELETON file for the 'Complex Numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
/* throw new Error("Remove this statement and implement this function"); */

export class ComplexNumber {
  constructor(real, imag) {
    this._real = real;
    this._imag = imag;
  }

  get real() {
    return this._real;
  }

  get imag() {
    return this._imag;
  }

  add(newCn) {
    this._real += newCn._real;
    this._imag += newCn._imag;
    return this;
  }

  sub(newCn) {
    this._real -= newCn._real;
    this._imag -= newCn._imag;
    return this;
  }

  div(newCn) {
    let real =
      (this._real * newCn._real + this._imag * newCn._imag) /
      (newCn._real * newCn._real + newCn._imag * newCn._imag);

    this._imag =
      (this._imag * newCn._real - this._real * newCn._imag) /
      (newCn._real * newCn._real + newCn._imag * newCn._imag);
    this._real = real;

    return this;
  }

  mul(newCn) {
    let real = this._real * newCn._real - this._imag * newCn._imag;

    this._imag = this.imag * newCn._real + this._real * newCn._imag;
    this._real = real;
    return this;
  }

  get abs() {
    return Math.sqrt(this._real * this._real + this._imag * this._imag);
  }

  get conj() {
    if (this._imag !== 0) {
      this._imag = this._imag * -1;
    }
    return this;
  }

  /* e^a * e^(i * b) = e^(a + i * b) */
  /* e^(i * b) = cos(b) + i * sin(b) */
  /* e^(a) * cos(b) + e^(a) * sin(b) + */
  get exp() {
    let real = Math.exp(this._real) * Math.cos(this._imag);
    this._imag = Math.exp(this._real) * Math.sin(this._imag);
    this._real = real;

    /* let real = Math.pow(Math.E, this._real) * Math.cos(this._imaginary);
        this._imag = Math.pow(Math.E, this._real) * Math.sin(imaginary);
        return new ComplexNumber(newReal, newImaginary); */
    /* console.log(
      [
        Math.exp(this._real + this._imag) +
          "==" +
          Math.exp(this._real) * Math.exp(this._imag)
      ],
      [Math.exp(this._imag) + "=" + Math.cos(this._imag) + Math.sin(this._imag)]
    ); */
    /* console.log(Math.exp(this._real)(this._real + this._imag)); */
    /* let real= 
    this._imag= Math.cos(this._imag) + Math.sin(this._imag)
    this._real= real;*/

    return this;
  }
}
