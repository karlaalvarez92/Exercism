export const convert = (number) => {
  const 
  threeIsFactor = "Pling",
  fiveIsFactor= "Plang",
  sevenIsFactor="Plong",

  isDivisibleBy =(number, factor)=> number % factor == 0,

  isDivisibleByThree = isDivisibleBy(number, 3),
  isDivisibleByFive=isDivisibleBy(number, 5) ,
  isDivisibleBySeven=isDivisibleBy(number, 7);
  
  let string= "";

  if(!isDivisibleBySeven && !isDivisibleByThree && !isDivisibleByFive){
    return number.toString()
  }else if(isDivisibleByThree){
    string+= threeIsFactor
  } 
  if(isDivisibleByFive){
    string += fiveIsFactor
  }
  if(isDivisibleBySeven){
    string +=sevenIsFactor
  }
  
return string
};
