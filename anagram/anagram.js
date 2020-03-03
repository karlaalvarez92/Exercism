//agregar para comparar si es la misma retornar array vacío

export const findAnagrams = (word, array) => {
  let
  sortedWord= word.toUpperCase().split("").sort().join(""),
  sortedArray= [],
  indexMatch=[],
  arrayWithMatches=[],

  arrayWithoutSameWords=()=>{for(let i = 0; i< array.length; i++){
  if(word.toUpperCase() == array[i].toUpperCase()){
    array.splice(array[i]);
  }
  console.log(array)
  return array;
}
  }
  arrayWithoutSameWords(word, array);

  for(let i=0; i< array.length; i++){
    sortedArray.push(array[i].toUpperCase().split("").sort().join("")); 
  }

  for(let i=0; i<= sortedArray.length; i++){
    if(sortedArray[i] == sortedWord){
      indexMatch.push(i)
    }
  }

  for(let i=0; i<indexMatch.length; i++){
    arrayWithMatches.push(array[indexMatch[i]])
  }
  return arrayWithMatches
}
