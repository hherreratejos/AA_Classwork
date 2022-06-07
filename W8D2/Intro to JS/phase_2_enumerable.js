Array.prototype.myEach = function (callback) {
  let i = 0;
  while (i < this.length) {
    callback(this[i]);
    i++;
  }
}

function double(el) {
  return el * 2;
}

const arr = [1, 2, 3, 4, 5];

//console.log(arr.myEach(double));

// for(let i = 0; i < this.length; i++){
// }

Array.prototype.myMap = function (callback) {
  const result = [];
  this.myEach(function(el) {
    result.push(callback(el));
  });
  return result;
}

// console.log(arr.myMap(double));

Array.prototype.myReduce = function (callback, initVal = null) {
  let i = 0;
  let acc = 0;
  if (initVal === null) {
    acc = this[0];
    i++;
  }else {
    acc = initVal;
  }

  for (i; i < this.length; i++) {
    acc = callback(acc, this[i]);
  }
  return acc;
}

console.log([1, 2, 3].myReduce(function(acc, el) {
  return acc + el;
}));

console.log([1, 2, 3].myReduce(function(acc, el) {
  return acc + el;
}, 25));
