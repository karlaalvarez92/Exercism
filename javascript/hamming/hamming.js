export const compute = (strand1, strand2) => {
  let diferences = 0;
  if (strand1.length == 0 && strand2.length !== 0) {
    throw new Error("left strand must not be empty");
  } else if (strand2.length == 0 && strand1.length !== 0) {
    throw new Error("right strand must not be empty");
  } else if (strand1.length !== strand2.length) {
    throw new Error("left and right strands must be of equal length");
  } else if (strand2 == strand1) {
    return diferences;
  } else {
    for (let i = 0; i < strand1.length; i++) {
      if (strand1[i] !== strand2[i]) {
        diferences++;
      }
    }
    return diferences;
  }
};
