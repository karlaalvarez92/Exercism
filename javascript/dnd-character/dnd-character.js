//Encuentra el modificador de constitución de tu personaje restando 10 de
//la constitución de tu personaje, divide entre 2 y redondea hacia abajo.
export const abilityModifier = modifier => {
  if (modifier < 3) {
    throw new Error("Ability scores must be at least 3");
  }
  if (modifier > 18) {
    throw new Error("Ability scores can be at most 18");
  }
  return Math.floor((modifier - 10) / 2);
};

//Escriba un generador de caracteres aleatorios que siga las reglas anteriores.
export class Character {
  constructor() {
    this._constitution = Character.rollAbility();
    this._strength = Character.rollAbility();
  }
  static rollAbility() {
    //Genera un número random del 1-6 simula tirar un dado
    let randomCharacter = () => Math.floor(Math.random() * 6 + 1);
    //Array dónde se guardan los tiros de dado
    let _rollAbility = Array(4);
    _rollAbility.fill("").map(e => _rollAbility.push(randomCharacter()));

    let abilityValue = _rollAbility
      .sort((a, b) => b - a)
      .slice(0, 3)
      .reduce((a, b) => (a += b));
    //console.log(keac);
    return abilityValue;
    //console.log(randomCharacter);
    //retorna habilidad
    //return ability;
  }

  get strength() {
    return this._strength;
    //throw new Error("Remove this statement and implement this function");
  }

  get dexterity() {
    return Character.rollAbility();
    //throw new Error("Remove this statement and implement this function");
  }

  get constitution() {
    return this._constitution;
    //throw new Error("Remove this statement and implement this function");
  }

  get intelligence() {
    return Character.rollAbility();
    //throw new Error("Remove this statement and implement this function");
  }

  get wisdom() {
    return Character.rollAbility();
    //throw new Error("Remove this statement and implement this function");
  }

  get charisma() {
    return Character.rollAbility();
    //throw new Error("Remove this statement and implement this function");
  }

  get hitpoints() {
    let addition = 10;

    return addition + abilityModifier(this._constitution);
    // throw new Error("Remove this statement and implement this function");
  }
}
