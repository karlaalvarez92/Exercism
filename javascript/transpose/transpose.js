//
// This is only a SKELETON file for the 'Transpose' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const transpose = array => {
  let newArray = [];

  if (array.length === 0) {
    return newArray;
  }

  for (let i = 0; i < array[0].length; i++) {
    newArray.push([]);
  }

  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array[0].length; j++) {
      if (array[i][j]) {
        newArray[j] += array[i][j];
      }
    }
  }

  return newArray;
};
