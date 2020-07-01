/* (?=\*)\n/g */
/*  */

export const convert = ocr => {
  /* console.log([ocr], ocr.length); */
  let str;
  let array = [];
  let newArray = [];
  let digits = array.length / 4;
  /* console.log(digits); */
  let currentIndex = 0;

  if ((ocr.length - 3) % 4 == 0 && (ocr.length - 3) % 3 == 0) {
    str = ocr.split(/\n/g);
  } else {
    str = ocr.replace(/(?=.)\s{9}(?=\n)/g, "").replace(/\n/g, "");
    /* .split("."); */
    /* .split(/\n/g); */
    /*.join("")
      .split(".");  */
    let min = 0;
    let max = 17;
    let section = 2;
    let current = 0;
    for (let j = 0; j < str.length; j += 18) {
      for (let i = min; i <= max; i += 3) {
        let a = str[i] + str[i + 1] + str[i + 2];
        if (newArray[currentIndex] == undefined) {
          newArray[currentIndex] = a;
        } else {
          newArray[currentIndex] += a;
        }
        if (currentIndex == section) {
          currentIndex = current;
        } else {
          currentIndex++;
        }
      }
      current += 3;
      section += 3;
      min += 18;
      max += 18;
    }
  }

  console.log([str], str.length /* str[0].length */);

  /*  str.forEach(el => {
    for (let i = 0; i < el.length; i += 3) {
      let a = el[i] + el[i + 1] + el[i + 2];
      array.push(a);
    }
  }); */
  /* console.log(array, array.length); */

  /*  for (let i = 0; i < array.length; i++) {
    if (newArray[currentIndex] == undefined) {
      newArray[currentIndex] = array[i];
    } else {
      newArray[currentIndex] += array[i];
    }
    if (currentIndex == digits - 1) {
      currentIndex = 0;
    } else {
      currentIndex++;
    }
  } */

  console.log(newArray, newArray.length);

  const NUMBER = {
    " _ | ||_|   ": "0",
    "     |  |   ": "1",
    " _  _||_    ": "2",
    " _  _| _|   ": "3",
    "   |_|  |   ": "4",
    " _ |_  _|   ": "5",
    " _ |_ |_|   ": "6",
    " _   |  |   ": "7",
    " _ |_||_|   ": "8",
    " _ |_| _|   ": "9"
  };
  let cifra = "";
  newArray.map(el => {
    if (NUMBER[el] == undefined) {
      cifra += "?";
    } else {
      cifra += NUMBER[el];
    }
  });
  return cifra;
};
