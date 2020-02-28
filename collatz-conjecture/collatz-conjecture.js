export const steps = (number) => {
  if (number <= 0) {
    throw Error('Only positive numbers are allowed')
  }

  let steps=0;

  while(number !==1){
    if(number % 2 == 0){
      number = number/2;
    }else{
      number = 3*number+1
    }
    steps++
  }
  return steps
};
