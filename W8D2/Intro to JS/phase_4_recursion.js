Array.prototype.range = function (start, end) {
  let arr = [];
  for (let i = start; i < end; i++) {
    arr.push(this[i]);
  }
  return arr;
}

let arr = [1, 2, 3, 4, 5];

// console.log(arr.range(0, 3));

function sumRec(arr, sum = 0) {
  if (arr.length === 0) {
    return sum;
  }

  return sumRec(arr.range(0, arr.length - 1), sum + arr[arr.length - 1]);
}

// console.log(sumRec(arr));

function exponent(base, exp){
  if (exp === 0){
  return 1;
  }

  return base * exponent(base, exp - 1)
}

// console.log(exponent(3, 4))

function exponent2(base, exp){
  if (exp === 0){
    return 1;
  }else if (exp === 1){
    return base;
  }

  if (exp % 2 === 0){
    return (exponent2(base, exp/2)**2) ;
  }else{
    return base * (exponent2(base, (exp-1)/2)**2);
  }
}

// console.log(exponent2(3,4))

function fibonacci(num){

  
  if (num === 1){
    return [0];
  }else if(num === 2){
    return [0,1]
  }

  let step = fibonacci(num - 1);

  return  step.concat(step[step.length - 1] + step[step.length - 2]);
}

console.log(fibonacci(500))