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

console.log(sumRec(arr));
