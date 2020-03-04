export const convert = (number) => {
  const
    THREE_IS_FACTOR = "Pling",
    FIVE_IS_FACTOR= "Plang",
    SEVEN_IS_FACTOR ="Plong",

    IS_DIVISIBLE_BY =(number, factor)=> number % factor == 0;
  
  let soundOfRain= "";

  /* if(!IS_DIVISIBLE_BY(number, 3) && !IS_DIVISIBLE_BY(number, 5) && !IS_DIVISIBLE_BY(number, 7)){
    soundOfRain+= number
  } */
  if(IS_DIVISIBLE_BY(number, 3)){
    soundOfRain+= THREE_IS_FACTOR
  } 
  if(IS_DIVISIBLE_BY(number, 5)){
    soundOfRain += FIVE_IS_FACTOR
  }
  if(IS_DIVISIBLE_BY(number, 7)){
    soundOfRain +=SEVEN_IS_FACTOR
  }
  
return soundOfRain
};
