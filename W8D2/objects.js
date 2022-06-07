// let hash = {
//   fn1 : function doubler(num){
//     return num * 2;
//   },
//   fn2: function century(num){
//     return num * 100;
//   }
// }

// console.log(hash.fn2(45))

// // Functions are a type of object.
// // there are 3 types of functions
// // 1- Named function

// function doubler(num){
//   //logic
// }

// // 2- Varible assignment/ annonymous function
// // aka Functional Expression

// const = decade = function(num){
//   //logic
// }

// // 3-  Constructor function
// // similar to classes on ruby

// function Car(make, model, year){
//   this.make = make;
//   this.model = model;
//   this.year = year;
// }

// // constructor function starts with a capital letter
// let toyota = new Car("Toyota", "Corolla", "1990")

// Car.prototype.isNew = function(){
//   if (this.year >= 2020){
//     return true;
//   }else{
//     return false;
//   }
// }

// // console.log(toyota.isNew());

// // 3 ways to invoke a function
// // 1. method style
// CanvasRenderingContext2D.drive():
// // 2. function style
// findSquareRoot(36);
// // 3. constructor style
// const restaurant = new Restaurant(){
  
// }

// function logElements(el){
//   console.log(el);
// }

// const arr = [1,2,3]

// arr.forEach((el) => {
//   logElements(el)
// })

// // function hello(){

// // }

// // const hello = function(){

// // }

// // const hello = ()=>

// const doubler = function(el){
//   return el * 2;
// }

// const decade = function(el){
//   return el * 10
// }

// const century = function(el){
//   return el * 100;
// }

// function doMathWithNumbers (num, func){
//   return func(num);
// }

// console.log(doMathWithNumbers(69, century))


// const singers = function(){
//     const popStars = ["The Weekend"]
//     return function(newSinger){
//       popStars.push(newSinger);
//       return `i have listened to ${popStars.join(' and ')}`
//     }
// }

// // console.log(singers()('Bad Bunny'))

// let retunedFunc = singers();
// console.log(retunedFunc("Bad Bunny"))

// const singers2 = function(artistArray){
//   return function(newStar){
//     artistArray.push(newStar);
//     return `I have listened to ${artistArray.join(' and ')}`
//   }
// }

// console.log(singers2(['Bad Bunny', 'Jbalvin'])('Daddy Yankee'))


// Questions for debugging
// 1.Have I declared variables propery?
// 2. Do I have acces to variables in a particular scope?
// 3.