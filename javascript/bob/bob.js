/* eslint-disable no-unused-vars */
//
// This is only a SKELETON file for the 'Bob' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const hey = message => {
  // let test = 'Ending with a ? means a question.'
  // console.log(test.lastIndexOf('?')!= -1)
  // console.log(test.includes())
  if(message.length == 0){
    return 'Fine. Be that way!'
  }else if(message.toUpperCase() == message && message.lastIndexOf('?')!= -1){
    return 'Calm down, I know what I\'m doing!'
  }else if (message.toUpperCase() == message) {
    return "Whoa, chill out!";
  }else if(message.lastIndexOf('?')!= -1){
    return "Sure."
  } else {
    return "Whatever.";
  }
};
//en los numeros el toUpperCase no funciona so... esos falla porque piensa que es mayuscula


//   message= String(message).trim();
//   const regxs = {
//    upper:/^[A-Z0-9 ]+$/,
//   }
//   if(regxs.upper.test(message)){return " mayus"}else{ return "no mayus"}
// };
// function checkType(words) {
//   words = String(words).trim();
//   const regxs = {
//     "lower": /^[a-z0-9 ]+$/,
//     "upper": /^[A-Z0-9 ]+$/,
//     "upperLower": /^[A-Za-z0-9 ]+$/
//   }

//   if (regxs.lower.test(words)) return '0';
//   if (regxs.upper.test(words)) return '1';
//   if (regxs.upperLower.test(words)) return '2';
//   return -1;
// }
