Array.prototype.bubbleSort = function(){
  let changes = true;
  let copy = [...this];
  while (changes){
    changes = false;
    for (let i = 0; i < copy.length - 1; i++){
      if (copy[i] > copy[i+1]){
        let tempv = copy[i];
        copy[i] = copy[i+1];
        copy[i+1] = tempv;
        changes = true;
      }
    }
  }
  return copy;
}

// const arr = [2,4,3,1,6,5]

// console.log(arr.bubbleSort())

String.prototype.substrings = function(){
  const subs = [];
  for(let i = 0; i <= this.length; i++){
    for(let j = i + 1 ; j <= this.length; j++){  
        subs.push(this.substring(i, j));
    }
  }
  return subs;
}

console.log("hello".substrings())

