export class Allergies {
  constructor(score) {
    this.score = score;
  }

  list() {
    return Object.keys(ALLERGENS).filter(item => ALLERGENS[item] & this.score);
  }

  allergicTo(allergen) {
    return this.list(this.score).includes(allergen);
  }
}

const ALLERGENS = {
  eggs: 1,
  peanuts: 2,
  shellfish: 4,
  strawberries: 8,
  tomatoes: 16,
  chocolate: 32,
  pollen: 64,
  cats: 128
};
