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

  //Un método static
  //Escriba un generador de caracteres aleatorios que siga las reglas anteriores.
  static rollAbility() {
    //Revisar como ponerlo en métodos más legibles, preguntar por qué no pude
    //mandar llamar más métodos después del map.
    let _rollAbility = Array(4);
    _rollAbility
      .fill("")
      .map(e => _rollAbility.push(Math.floor(Math.random() * 6 + 1)));

    let abilityValue = _rollAbility
      .sort((a, b) => b - a)
      .slice(0, 3)
      .reduce((a, b) => (a += b));

    return abilityValue;
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
