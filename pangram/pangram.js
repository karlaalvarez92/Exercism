import { stringify } from "querystring";

//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isPangram = (sentence) => {
  const ABC = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
   "o", "p",  "q",  "r",  "s",  "t", "u", "v", "w", "x", "y", "z"
  ];
  return ABC.every((letter)=>{
    return sentence.toLowerCase().incluse(letter);
  })

}






//   let separaCaracteres= sentence.toLowerCase().split('');
//   let filtraCaracteres= separaCaracteres.filter(distinct)
//   let newArray=[];
//   for(let i=0; i<= newSentence.length; i++){
//     newArray.push(ABC.includes(newSentence[i]))
//   }
//   if(newArray.length === ABC.length){
//   return true
//   }else{return false}
// }






// //console.log(sentenceArray);
// let allLetters = (sentence)=>{
//   let sentenceArray = "" 
//  sentenceArray = sentence.toLowerCase().split(''); 
//   let newArray="";
// for(let i=0; i<= ABC.length; i++){
//   if(sentenceArray.includes(ABC[i])){
//     return newArray = newArray.push(ABC[i])
//   }
// }
// allLetters(sentence);

// if(newArray.length == ABC.length){return true}else{return false}

// }

// //   let newSentence= sentence.toLowerCase().split('');
// //   // console.log(newSentence.indexOf("a"))
// //   if(sentence){
// //   for(let i=0; i<= ABC.length; i++){
// //   if(ABC[i].indexOf(newSentence)===-1){
// //     return true
// //   }
// //   }
// // }
// //   return false
// };

