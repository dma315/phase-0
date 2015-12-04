
// As a user, I want to pass the sum method an array and have it return the sum of all of the elements.
function sum(numbers) {
  var sum = 0;
  for(var index = 0; index < numbers.length; index++){
    sum += numbers[index];
  }
  return sum;
}

// As a user, I want to pass the mean method an array and have it return the mean of all of the elements
function mean(numbers) {
  return sum(numbers)/numbers.length;
}

// As a user, I want to pass the median method an array and have it return the median of all of the elements
var median = function(numbers) {
  var medIndex = Math.floor(numbers.length / 2);
  var sorted = numbers.sort();
  if(numbers.length % 2 == 0) {
    return (sorted[medIndex] + sorted[medIndex - 1]) / 2
  } else {
    return sorted[medIndex]
  }
}

console.log(sum([1,2,3,4,5])) // Should return 15
console.log(mean([1,2,3,4,5])) // Should return 3
console.log(median([4,2,3,1,5,6])) // Should return 3.5
console.log(median([3,4,1,2,5,6,7])) // Should return 4
