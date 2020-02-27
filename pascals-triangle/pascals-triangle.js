export const rows = n => {
let piramide= [];

for(let row=0; row<n; row++){
  let listas= []

 for(let column=0; column<=row; column++){
   let element = 0;
  if(column===0 || column===row){
    element=1
  }else{
    element= piramide[row-1][column-1] + piramide[row-1][column];
  }
   listas.push(element);
 }
 piramide.push(listas);
}
return piramide;
}

