// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: .

// Pseudocode
// Input: Number of any length
// Output: number with inserted Commas
// Code!
// 1. Convert number to string
// 1a. convert number string to array
// 2. while loop where index number is greater than 2
// 2a. start counter at length of array. 
// 2b. Concat comma with every third array item.
// 3. Join array together

// Initial Solution

// function separateComma(num) {
//   var array = num.toString().split("");
//   var i = array.length - 3;
//   while (i >= 1) {
//     array[i] = "," + array[i];
//     i -= 3 
//   }
//   return array.join("")
// }

// console.log(separateComma(123456))
// console.log(separateComma(12345678))
// console.log(separateComma(123456789))
// console.log(separateComma(1234567890))

// Refactored Solution

function separateComma(num) {
  var array = num.toString().split("");
  for (var i = array.length - 3; i >= 1; i -= 3)
    array[i] = "," + array[i];
  return array.join("")
}

console.log(separateComma(123456))
console.log(separateComma(12345678))
console.log(separateComma(123456789))
console.log(separateComma(1234567890))

// Your Own Tests (OPTIONAL)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//		Nothing crazy different, we weren't sure if some of the methods in Ruby were still available to us, but they behaved roughly the same way!

// What did you learn about iterating over arrays in JavaScript?
//		It's a bit harder, since we essentially have to break them down to basic loops (for and while) while Ruby has some more elegant things like .each

// What was different about solving this problem in JavaScript?
//		We had to think maybe a bit more mathematically, but nothing very different in my opinion.

// What built-in methods did you find to incorporate in your refactored solution?
//		We took our while statement and condensed it into a nice for statement.


