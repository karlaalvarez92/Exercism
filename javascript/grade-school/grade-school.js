//Puse la constante afuera porque no estoy segura de si debería utilizar
//un constructor

const SCHOOL_LIST = {};
//let names = [];
export class GradeSchool {
  constructor() {
    this.schoolList = {};
  }
  roster() {
    return SCHOOL_LIST;
    //return this.schoolList;
  }

  add(name, grade) {
    if (grade in this.schoolList) {
      this.schoolList[grade] = [...this.schoolList, name];
    } else {
      this.schoolList[grade] = [name];
    }
    //console.log(this.schoolList);
    return this.schoolList;
  }

  /* console.log(this.schoolList);
    return this.schoolList; */

  /* if (SCHOOL_LIST[grade]) {
      SCHOOL_LIST[grade].push(name);
    } else {
      SCHOOL_LIST[grade] = [name];
    } */
  /*   console.log(SCHOOL_LIST);
    return (SCHOOL_LIST[grade] = [name]); */
  //}

  grade() {}
}
