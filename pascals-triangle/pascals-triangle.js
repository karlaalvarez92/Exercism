export const rows = n => {
let pyramid= [];

for(let row=0; row<n; row++){
  let rowArray= []

 for(let column=0; column<=row; column++){
   let element = 0;
  if(column===0 || column===row){
    element=1
  }else{
    element= pyramid[row-1][column-1] + pyramid[row-1][column];
  }
  rowArray.push(element);
 }
 pyramid.push(rowArray);
}
return pyramid;
}

