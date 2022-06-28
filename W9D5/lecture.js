// es6 Class

class MyClass extends ParentClass {
  constructor(attr){
    this.attr = attr
  }

  instanceMethod(){
    //some logic
  }

  static classMethod(){
    // some logic
  }
}

// Arrow Functions

// - One of the ways we can define a function in JS.
// - Binds context to the context in wich the function was defined.
// - It will override calling .bind on the function.

// - You can get implicit returns ommiting curly braces in the function declaration.
// - Only works for performing one action or direct chain of actions.

// Returns sum
const add = (num1, num2) => num1 + num2

// Returns object
const makeObj = (name, color) => ({
  myName: name, myColor: color
})

// Multiple related & chained actions

const concatFirst3 = (arr1, arr2) => (
  arr1.slice(0,3).concat(arr2.slice(0,3))
)

// Will not work
const error = (arr) => (
  const arr2 = arr.concat([1,2]);
  arr2.map(e => e*2)
)


// - You can omit parentheses when there is exactly one argument

// Can omit
ex => { /do something/}


// ES6 Export and Import

export default

export const //on each const you want to export

export class //on each const you want to export

export {function, const}

//Import

import /something/ from /somewhere/

// if the object was exported with export default you can name the import anything

import ExampleClass from "./export1.js"

import {fn1, fn2} from "./export2.js"

import * as export3 from "./export3.js"

