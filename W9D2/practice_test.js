//mySlice

String.prototype.mySlice = function(start, end) {
  let slicedStr = "";

  if (end === undefined) end = this.length;

  for (let i = start; i < end && i < this.length; i++) {
    const char = this[i];
    slicedStr += char;
  }

  return slicedStr
}

//myEach

Array.prototype.myEach = function(callback) {
  for (let i = 0; i < this.length; i++) {
    const el = this[i];
    callback(el);
  }
}

//myReduce

Array.prototype.myReduce = function(callback, acc){

  const arrCopy = this.slice();

  if (acc === undefined) {
    acc = arrCopy.shift();
  }
  
  this.myEach(el => {
    acc = callback(acc, el);
  });
  return acc;
}

//quickSort

Array.prototype.quickSort = function(callback){
  if (this.length <= 1) return this;

  callback = callback || sortHelper;

  const pivot = this[0];
  const unsorted = this.slice(1);

  const left = unsorted.filter(el => callback(el , pivot) === -1);
  const right = unsorted.filter(el => callback(el, pivot) >= 0);

  const leftSorted = left.quickSort(callback);
  const rightSorted = left.quickSort(callback);

  return leftSorted.concat(pivot, rightSorted);
}

function sortHelper(a, b){
  if (a< b) return -1;
  if (a === b) return 0;
  if (a > b) return 1;
}

// sumNPrimes

function sumNPrimes(n){
  let totalSum = 0;
  let i = 2;

  while (n>0){
    if isPrime(i){
      totalSum += i;
      n--
    }
    i++
  }
  return totalSum
}


function isPrime(n){
  if (n < 2) return false;
  for(let i = 2; i < Number; i++){
    if (num % i === 0) return false;
  }
  return true;   
}

//myBind

Function.prototype.myBind = function(ctx, ...bindArgs){
  const that = this;
  return function(...callArgs){
    that.apply(ctx, bindArgs.concat(callArgs));
  }
}

//inherits

Function.prototype.inherits = function(ParentClass){
  function Surrogate(){};
  Surrogate.prototype = ParentClass.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
}

//myCurry

Function.prototype.myCurry = function(numArgs){
  const args = [];
  const that = this;

  return function _innerCurry(arg){
    args.push(arg);
    if (numArgs === args.length){
      that(...args);
      // return that.apply(null, args);
    }else{
      return _innerCurry;
    }
  }
}