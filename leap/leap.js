export const isLeap = year => {
  return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? true : false;
};



// With a ternary function code is reduced

// if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
//   return true
// }else{
//   return false
// }
