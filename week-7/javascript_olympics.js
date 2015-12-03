// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.

// Bulk Up

// Warm Up
// 0.  Create an array of athletes
// 1.  Create function that takes an array of athletes 
// 2.  Create win property that prints "athlete won"

var mj = {name: 'Michael Jordan', events: 'basketball'}
var dr = {name: 'Derrick Rose', events: 'basketball'}
var sw = {name: 'Serena Williams', events: 'tennis'};

var athletes = [mj, dr, sw];

// array of objects w/ properties name & event
// function needs to add a win property (prints #NAME won the #EVENT)

var add_win = function(array) {
  // loop through atheletes and add new property (win)
  for (var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " wins at " + array[i].events;
  };
};

// add_win(athletes);
// console.log(athletes);


// Jumble your words

// 0. define a method that takes in a string
// 1. split string by "" -- add to array
// 2. reverse array
// 3. return reversed array, joined with ""


function reverse_string(string) {
  var array = string.split("");
  array.reverse();
  return array.join("");
};

// console.log(reverse_string("Chicago"));
// console.log(reverse_string("I like ice cream!"));
// console.log(reverse_string("Kobe Bryant just retired"));
// console.log(reverse_string("racecar"));

// 2,4,6,8

// 1. Define function that accepts an array
// 2. Iterate through the array
// 3. Add only elements that fulfill our rule of being even to the resulting array
// 4. Return resulting array


function isEven(value) {
  if (value % 2 == 0)
    return value
  else return null
}

// console.log([1,2,3,4,5,6,7,8].filter(isEven));
// console.log([2,4,6,8].filter(isEven));
// console.log([1,3,5,7].filter(isEven));
// console.log([100, -100, 4, 5, 6, 12, 13, 17].filter(isEven));

function isEven2(array) {
  var new_array = []
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      new_array.push(array[i])
  };
  return new_array;
};

// console.log(isEven2([1,2,3,4,5,6,7,8]));
// console.log(isEven2([2,4,6,8]));
// console.log(isEven2([1,3,5,7]));
// console.log(isEven2([100, -100, 4, 5, 6, 12, 13, 17]));



// "We built this city"

//

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  this.whatAmI = function(language) {
    console.log("I am " + name + " and I'm " + age + ". I do " + sport)
    };
};


// Athlete(name, age, sport, quote)

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);
michaelPhelps.whatAmI();


// Reflection



// What JavaScript knowledge did you solidify in this challenge?
//		Nice to learn a couple new methods.
//		Nice to also see the equivalent of Ruby Classes, I can now see how the first release and last are related
//		Feels very full circle.


// What are constructor functions?
//		They appear to be the way to initiate "class" like objects in JavaScript
//		They are essentially functions that have properties that can be called


// How are constructors different from Ruby classes (in your research)?
//		So far, they appear to have very similar functionality to Ruby classes
//		They get initialized in a similar way, but slightly different syntax
//		They can have properties / attributes (with different syntax)
//		And they can have methods that are unique to them (but they look more like properties than functions)
//		I'm sure there are some bigger differences and nuances but at the basic level, they appear pretty similar besides syntax