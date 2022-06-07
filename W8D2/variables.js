// const

// 1. can be declared and assigned ONLY once
// aka it must be initialized at the time of declaration.
// 2. const is block scoped
// 3. reassignment is not allowed, mutations are.
// 4. try to use const where possible

// scope: 'the scope of a variable is the region of a program where it can be accesed'

// function scopeExample(){
//   // scope 1
//   const x = "x";
//   // no acces to y constant
//   console.log(y);
//   if (true){
//     // scope 2
//     const y = "y";
//     // acces to x constant
//     console.log(x);

//   }

//   {
//     // scope 3
//     const z = "z";
//     // acces to x constant
//     console.log(x);
//   }
// }


// function howToConst() {
//   const username = 'Harold';

//   if (true) {
//     const username = 'Url';

//     console.log(username);
//   }

//   console.log(username);
// }

// howToConst()

// function howToConst2() {
//   const username = 'Harold';

//   if (true) {
//     console.log(username);
//   }

//   console.log(username);
// }

// howToConst2()

// function howToConst3(){
//   if (true) {
//     const username = 'Harold';
//     console.log(username);
//   }

//   console.log(username);
// }
// howToConst3()



// let
// 1. let can be declared only once, but reassignment is allowed
// 2. let is block scoped


// function howToLet(){
//   let secret = "i'm secretly a cat."
//   console.log(secret)

//   if (true){
//     secret = "i'm secretly a banana"
//     console.log(secret)
//   }
// }
// howToLet()

// function howToLet2(){
//   let secret = "i'm secretly a cat";

//   if (true){
//     secret = "i'm secretly a banana";
//     console.log(secret);

//     // let secret = "Nope, definetly a cat";
//   }

//   console.log(secret);
// }

// howToLet2()

// var
// 1. function scoped
// 2. don't do it

// function howToVar(){
//   var username = "Harold";

//   console.log(username);
//   var username = "Url";
//   if (true){

//   }

//   console.log(username);
// }

// howToVar()