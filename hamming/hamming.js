//
// This is only a SKELETON file for the 'Hamming' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const compute = (strand1, strand2) => {
  // switch ((strand1, strand2)) {
  //   case strand1 == 0:
  //     return "left strand must not be empty";
  //     break;
  //   case strand2 == 0:
  //     return "right strand must not be empty";
  //     break;
  //   case strand2.length !== strand1.length:
  //     return "left and right strands must be of equal length";
  //     break;
  //   default:
  //  console.log("tiene la misma cantidad de carácteres")
  // }
  let diferences=0;
  if (strand1.length == 0 && strand2.length !== 0 ){
    throw new Error('left strand must not be empty')
  }else if(strand2.length == 0 && strand1.length !== 0 ){
    throw new Error('right strand must not be empty')
  }else if(strand1.length !== strand2.length){
    throw new Error('left and right strands must be of equal length')
  }else if(strand2 == strand1){
return diferences;
  }else{

    for(let i =0; i<strand1.length; i++){
      if(strand1[i] !== strand2[i]){
        diferences++
      }
    }
    return diferences
    
  }
  
};
