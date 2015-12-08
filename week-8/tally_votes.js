// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Joe Plonsker
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input:  Votes objects
// Output:  
//    1.  Tally votes in the vote tally
//    2.  Select the max vote getter by position
// Steps:
//    1. Set up loop to go through each person's vote
//    2. Set up loop to go through all positions per each person's vote
//    3. Use some sort of flow control to add when the name is already there vs. create new entry if name is not already there


// __________________________________________
// Initial Solution

// for (var voter in votes) {
//   var ballot = votes[voter];
//   for (var position in ballot) {
//     if (voteCount[position][ballot[position]] >= 1) {
//       voteCount[position][ballot[position]] += 1;
//     } else {
//       voteCount[position][ballot[position]] = 1
//     }
//   }
// }

// function sortVote(tally) {
//   var sorted = [];
//   for (var name in tally) {
//     sorted.push([name, tally[name]])
//   }
//   sorted.sort(function(a,b) {return b[1] - a[1]})
//   return sorted[0][0]
// }

// console.log(sortVote({ 
//   Bob: 3, 
//   Mary: 1, 
//   Cindy: 1, 
//   Louise: 10, 
//   Fred: 4, 
//   Ivy: 1, 
//   Nate: 1, 
//   Oscar: 1, 
//   Paulina: 1, 
//   Tracy: 1, 
//   Wesley: 1, 
//   Steve: 1 }))

// for (var position in voteCount) {
//   officers[position] = sortVote(voteCount[position])
// }

// console.log(officers)



// __________________________________________
// Refactored Solution


for (var voter in votes) {
  var ballot = votes[voter];
  for (var role in ballot) {
    if (voteCount[role][ballot[role]] >= 1) voteCount[role][ballot[role]] += 1
    else voteCount[role][ballot[role]] = 1
  }
}

function sortVote(tally) {
  var sorted = [];
  for (var name in tally) sorted.push([name, tally[name]]);
  sorted.sort(function(a,b) {return b[1] - a[1]});
  return sorted[0][0];
}

for (var role in voteCount) officers[role] = sortVote(voteCount[role]);

console.log(officers);



// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//    Learned how to do it! Was a bit confusing at first, but makes a lot of sense, just takes some time to think through how to do it. 

// Were you able to find useful methods to help you with this?
//    I'm learning a lot that JS allows us to customize how we want methods to work
//    e.g. in our sort method, which had an array inside an array, we were able to define our own comparator, which was cool

// What concepts were solidified in the process of working through this challenge?
//    I like the for...in statement, haven't been using that, and it's nice to see that be used as the way to do .each in Ruby


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)