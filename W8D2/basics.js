bestDogInCalifornia = "Remy";
// camelCase


// semi colon to end statement
function doubler(array){
  let newArray = [];
  array.forEach(el =>{
    newArray.push((el * 2))
    // you can not return inside a forEach
  })
  return newArray;
}
// no semicolon, becouse there is a curly bracket


// the one exeption
hash = {};

// global variable
// don't do it
popStars = "bad bunny";


// we must declare variables using key words
let bestCityInCa = "San Diego";
// allow us to reassign its value
//block scope
bestCityInCa = "LA"

const bestCityInWa = "Seattle";
// we can not reassign its value
// blocked scoped
bestCityInWa = "Bellvue"
// this would throw an error

// we try to avoid using var!!
var bestCityInFlorida = "Miami";

if (something === somethingelse){
  // some logic
}else if (somehing <= somethingelse){
  // more logic
}else {
  // logik
}

// there is no negative indexing in JS
let array = [1,2,3,4,5];

// to get las element in the array
array[array.length - 1]


0 === 0 ;
//true

0 == "0" ;
// true

// 7 falsey values
// null
// undefined
// 0, -0
// NaN
// ''
// false

