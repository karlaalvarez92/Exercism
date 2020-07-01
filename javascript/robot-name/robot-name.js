// This is only a SKELETON file for the 'Robot Name' exercise. It's been
// provided as a convenience to get your started writing code faster.

export class Robot {
  constructor() {
    this._name = this.randomName();
    this.usedNames = [];
  }

  randomLeter() {
    return String.fromCharCode(Math.floor(Math.random() * 26) + 65);
  }
  randomNumber() {
    return String(Math.floor(Math.random() * 10));
  }
  randomName() {
    return (
      this.randomLeter() +
      this.randomLeter() +
      this.randomNumber() +
      this.randomNumber() +
      this.randomNumber()
    );
  }

  get name() {
    return this._name;
  }
}

Robot.releaseNames = () => {};
