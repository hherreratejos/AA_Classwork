
  // function callback(num1, num2) {
  //   return Math.sign(num1-num2);
  // }
Array.prototype.mergeSort = function(callback) {
  if (this.length === 1){
    return this;
  }
  callback ||= function(num1,num2){
    return Math.sign(num1-num2);
  } 
  let m = Math.floor(this.length / 2);
  let left = this.slice(0,m);
  let right = this.slice(m,this.length);
  return merge(left.mergeSort(), right.mergeSort(), callback);
}

function merge(left, right, callback) {
  let newArr = [];
  while (left.length > 0 && right.length > 0){
    if (callback(left[0], right[0]) === -1){
    newArr.push(left.shift());
  }else{
    newArr.push(right.shift());
  }
}
  return newArr.concat(left).concat(right);
}
const arr = [1,4,6,7,32,3,4,7];

console.log(arr.mergeSort());

