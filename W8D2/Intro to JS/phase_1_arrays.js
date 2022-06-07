Array.prototype.uniq = function(){
  const newArray = [];
  this.forEach((el) => {
    if (!newArray.includes(el)){
      newArray.push(el);
    }
  });
  return newArray;
}

// const arr = [1, 2, 2, 3, 3, 4, 5]

// console.log(arr.uniq()

Array.prototype.twoSum = function(){
  const positions = [];
  let i1 = 0;
  let i2 = 0;
  this.forEach((el1) => {
    
    this.forEach((el2) => {
      if (i2 > i1 && el1 + el2 === 0){
        positions.push([i1,i2]);
      }
      i2++;
    });
    i1++;
    i2 = 0;
  });
  return positions;
}

// const arr = [1,3,-3, 7, 0, 0, 9, -1];

// console.log(arr.twoSum());

Array.prototype.transpose = function(){
  const result = [];
  let i = 0;
  let j = 0;
  this.forEach((el1) => {
    let subArr = [];
    el1.forEach((el2) => {
      subArr.push(this[j][i]);
      j++;
    });
    result.push(subArr);
    j = 0
    i++;
  });
  return result;
}

// const arr = [[1,2,3], [4,5,6], [7,8,9]];

// console.log(arr.transpose());