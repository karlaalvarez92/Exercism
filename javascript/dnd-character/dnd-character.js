/*Encuentra el modificador de constitución de tu personaje restando 10 de
la constitución de tu personaje, divide entre 2 y redondea hacia abajo.*/
export const abilityModifier = modifier => {
  if (modifier < 3) {
    throw new Error("Ability scores must be at least 3");
  }
  if (modifier > 18) {
    throw new Error("Ability scores can be at most 18");
  }
  return Math.floor((modifier - 10) / 2);
};

export class Character {
  //En el constructor debería poner todo lo que va a necesitar mi clase
  constructor() {
    this._constitution = Character.rollAbility();
    this._strength = Character.rollAbility();
    this._dexterity = Character.rollAbility();
    this._intelligence = Character.rollAbility();
    this._wisdom = Character.rollAbility();
    this._charisma = Character.rollAbility();
  }

  //Un método static se utiliza cuando sólo ???? no necesita
  //Escriba un generador de caracteres aleatorios que siga las reglas anteriores.
  static rollAbility() {
    return Array(4)
      .fill("")
      .map(e => Math.floor(Math.random() * 6 + 1))
      .sort((a, b) => b - a)
      .slice(1)
      .reduce((a, b) => (a += b));
  }

  get strength() {
    return this._strength;
  }

  get dexterity() {
    return this._dexterity;
  }

  get constitution() {
    return this._constitution;
  }

  get intelligence() {
    return this._intelligence;
  }

  get wisdom() {
    return this._wisdom;
  }

  get charisma() {
    return Character.rollAbility();
  }

  get hitpoints() {
    let addition = 10;
    return addition + abilityModifier(this._constitution);
  }
}
