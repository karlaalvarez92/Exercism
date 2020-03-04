export class Squares {
  constructor(number) {
    this.number =number;
    this.SumOfSquares=0;
    this.SquareOfSum=0; 
  }

  get sumOfSquares() {
    for(let i=0; i<=this.number; i++){
      this.SumOfSquares+= Math.pow(i, 2)
    }
    return this.SumOfSquares
  }  

  get squareOfSum() {
    for(let i=0; i<=this.number; i++){
      this.SquareOfSum+=i
    }
    this.SquareOfSum= Math.pow(this.SquareOfSum, 2) 
    return this.SquareOfSum
  }
    
  get difference() {
    return  this.SquareOfSum - this.SumOfSquares 
  }
}
