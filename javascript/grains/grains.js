export const square = n => {
  let casilla = 1;
  let granos = 1n;
  if (n > 0 && n < 65) {
    for (casilla; casilla < n; casilla++) {
      granos *= 2n;
    }
  } else {
    throw new Error("square must be between 1 and 64");
  }

  return granos;
};

export const total = () => {
  let total = 0n;
  let grains = 1n;
  for (let i = 1; i < 65; i++) {
    grains *= 2n;
  }
  return (total += grains) - 1n;
};
