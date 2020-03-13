/* Tome cualquier número entero positivo n. Si n es par, divida n entre 2 
para obtener n / 2. Si n es impar, multiplique n por 3 y sume 1 
para obtener 3n + 1. Repita el proceso indefinidamente. 
La conjetura establece que no importa con qué número comiences, 
siempre llegarás a 1 eventualmente.

Dado un número n, devuelve el número de pasos necesarios para llegar a 1. */

export const steps = number => {
  if (number <= 0) {
    throw Error("Only positive numbers are allowed");
  }

  let steps = 0;

  while (number !== 1) {
    if (number % 2 == 0) {
      number = number / 2;
    } else {
      number = 3 * number + 1;
    }
    steps++;
  }
  return steps;
};
