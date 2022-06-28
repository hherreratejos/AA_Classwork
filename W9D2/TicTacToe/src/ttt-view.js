class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.setupBoard();
    this.handleClick = this.handleClick.bind(this);
    this.bindEvents();

  }

  setupBoard() {
    const ul = document.createElement("ul");

    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        li.dataset.index = `[${i},${j}]`;
        console.log(li.dataset.index)
        ul.appendChild(li);
      }
    }
    this.el.appendChild(ul);
  }
  
  bindEvents() {
    this.el.addEventListener("click", this.handleClick);
  }

  handleClick(e) {
    let ele = e.target;
    
    if (ele.nodeName === 'LI') {
      this.makeMove(ele);
    }
  }
  
  makeMove(square) {
    if (!this.game.isOver()) {
      let pos = JSON.parse(square.dataset.index);
      let mark = this.game.currentPlayer;
      
      if (square.classList.value === "move-played"){
        throw "Can't move here"
      }
      
      try {
        this.game.playMove(pos);
      }
      catch(MoveError) {
        alert("You can't go there ya dummy");
      }
      
      square.classList.add("move-played");
      console.log(square.classList);
      
      square.innerText = mark;
      if (this.game.isOver()) {
        alert("The game is over");
      } 
    }

  }

}

module.exports = View;
