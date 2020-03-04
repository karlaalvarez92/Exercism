export class HighScores {
  constructor(scores) {
    this.scoresGame = scores;
    /* this.sortedScores = this.scoresGame.sort((a, b) => {
      return b - a;
    }); */
  }

  get scores() {
    return this.scoresGame;
  }

  get latest() {
    return this.scoresGame[this.scoresGame.length - 1];
  }

  get personalBest() {
    let sortedScores = this.scoresGame.sort((a, b) => {
      return b - a;
    });
    return sortedScores[0];
  }

  get personalTopThree() {
    let sortedScores = this.scoresGame.sort((a, b) => {
      return b - a;
    });
    return sortedScores.slice(0, 3);
  }
}
