// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var davidMa = "David Ma"
console.log(davidMa + " is a person.")

// Return favorite food exercise

// food = prompt("What is your favorite food?","")
// alert("Hey, " + food + " is my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
pound = ""
while (pound.length < 7) {
	pound = pound + "#"
	console.log(pound)
}

// FizzBuzz
for (var i = 1; i <= 100; i++)
  if (i % 15 == 0) console.log("FizzBuzz")
  else if (i % 5 == 0) console.log("Buzz")
  else if (i % 3 == 0) console.log("Fizz")
  else console.log(i) 

// Functions

// Complete the `minimum` exercise.

function min(a,b) {
	if (a < b) 
      return a
    else 
      return b
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
	name: "David Ma",
	age: 24,
	favorite_foods: ["Pizza","Cheeseburger","Milkshake"],
	quirk: "I clip my nails 2x a week."
}

console.log(me)