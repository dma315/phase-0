/*
Gradebook from Names and Scores
I worked on this challenge with Jonathan Huang
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// Release 1
var gradebook = {}

// Release 2
for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
}

// Release 3
for(var i = 0; i < scores.length; i++) {
  gradebook[students[i]]["testScores"] = scores[i];
}

for(var i = 0; i < scores.length; i++) {
  gradebook[students[i]].testScores = scores[i];
}

// Release 4
gradebook["addScore"] = function (name, score) {
  gradebook[name]["testScores"].push(score);
}

// Release 5
gradebook["getAverage"] = function() {}

// Release 6
function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) sum += array[i];
  return sum / array.length
}


// Release 7
gradebook["getAverage"] = function(name) {
  return average(gradebook[name]["testScores"]);
}

// __________________________________________
// Refactored Solution

//
function average(array) {
  return array.reduce(function(x,y){return x+y}) / array.length
}

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
//    Learned that they are essentially just elements we can add to objects! How cool JS, you sneaky programming language!

// How did you iterate over nested arrays in JavaScript?
//    We had to use multiple brackets and be smart in how we defined our index variables, luckily were able to do it in one loop though


// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//    We learned about how to use the .reduce method, which was nice. Initially, we used a for loop but looks like JS has ways of doing some more fancy stuff too!





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)