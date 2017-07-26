// RELEASE 0
// create an array of many phrases of varying lengths
// return the length of each of the phrases
// determine which length is the largest
// map that index number back to the original phrase
// print the original phrase that is the longest
// input: the array of phrases
// output: the phrase that is the longest

// var phrases = ["Get in here", "Get out", "Get out of there", "Get a move on", "Get it on", "Get lost"];
// var kitchenPhrases = ["kiss the cook", "wash the dishes", "bus the table", "let's say grace"]

// function longestPhrase(array) {
//   newArray = []
//   for (var i = 0; i < array.length; i++) {
//     var length = array[i].length;
//     newArray.push(length);
//   }
//   return newArray;
// }

// //"Get" phrases
// longestPhrase(phrases)
// var max = (Math.max.apply( Math, newArray ))
// var longestphraseIndex = newArray.indexOf(max)
// console.log(phrases[longestphraseIndex])

// //"Kitchen" phrases
// longestPhrase(kitchenPhrases)
// var max = (Math.max.apply( Math, newArray ))
// var longestphraseIndex = newArray.indexOf(max)
// console.log(kitchenPhrases[longestphraseIndex])

// RELEASE 1
// create an object for steven
// create an object for tamir
// create a function that asks if the key pairs OR value match. If true, put true. If false, put false.

var St = {name: "Steven", age: 54};
var Tm = {name: "Tamir", age: 54};
var key = 'name';
var value = 'age';

function matchData(person1, person2) {
  if (obj1[key]==obj2[key] || obj1[value]==obj2[value]) {
    return "that's true!";
  } else {
    return "that's false";
  }
}

console.log(matchData(St,Tm))

var dog1 = {animal: "Dog", legs: 4};
var dog2 = {animal: "Dog", legs: 3};
var key = 'animal';
var value = 'legs';

function matchData(obj1, obj2) {
  if (obj1[key]==obj2[key] || obj1[value]==obj2[value]) {
    return "that's true!";
  } else {
    return "that's false";
  }
}

console.log(matchData(dog1, dog2))

var pizza1 = {pizzaType: "Margherita", herbs: "basil"};
var pizza2 = {pizzaType: "Siciliano", herbs: "oregano"};
var key = 'pizzaType';
var value = 'herbs';

function matchData(obj1, obj2) {
  if (obj1[key]==obj2[key] || obj1[value]==obj2[value]) {
    return "that's true!";
  } else {
    return "that's false";
  }
}

console.log(matchData(pizza1, pizza2))

//RELEASE 2
