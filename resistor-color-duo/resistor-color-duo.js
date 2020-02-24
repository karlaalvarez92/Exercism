//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// export const decodedValue = ([color1, color2]) => {
//   let index1= COLORS.indexOf(color1);
//   let index2= COLORS.indexOf(color2);

//   return parseInt(String(index1)+index2);

// };

// export const COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];

export const decodedValue = (colors) => {
  return Number(`${COLORS[colors[0]]}${COLORS[colors[1]]}`)

};

const COLORS = {
  "black":0,
"brown": 1,
"red": 2,
"orange":3,
"yellow":4,
"green": 5,
"blue":6,
"violet":7,
"grey":8,
"white":9
};