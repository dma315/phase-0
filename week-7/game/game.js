 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create 2048
// Goals:  Achieve 2048 in a 4x4 box
// Characters:  Tiles
// Objects:  The tile structure
// Functions:  Player can select up, down, left, right

// Pseudocode
// 1.  Define the initial board
// 2.  Create ability to merge (add numbers) using selected direction
// 3.  Generate random number after each turn
// 4.  Return output 
//

// Initial Code

// 0.  Set up random number generator

function random2or4() {
  var rand = (Math.floor(Math.random()*2)+1)*2
  return rand
} 

for (var i=0; i<=20; i++)
console.log(random2or4())

// 1.  Set up initial matrix
var matrix = {
  0: [2,2,4,0],
  1: [0,4,2,0],
  2: [2,4,8,0],
  3: [0,4,4,4]
}

// 2.  Set up ability to display the matrix

// Pad spaces on a given string up to length 5 (for use later)
function pad5(a) {
  var pad = 5 - a.toString().length;
  while (pad > 0) {
    if (a != 0) {
      a = " " + a.toString()
      pad--
      }
    else {
      a = "    -"
      pad -= 5}
  }
  return a
}

// console.log(pad5(0))
// console.log(pad5(10))
// console.log(pad5(100))
// console.log(pad5(1000))

// Display the padded array (display all 4 lines of array on one line)
function arrayDisplay(array) {
  var display = "";
  for(var i = 0; i < array.length; i++)
    display = display + pad5(array[i]);
  return display;
}

// Display all 4 lines of the array
function displayMatrix() {
  for (var i = 0; i <= 3; i++) {
    console.log(arrayDisplay(matrix[i]))
  }
  console.log("")
}


//  3.  Set up ability to condense any given row / column


// Condense any given row 
function condense(array, direction) {
  
  if (direction == "right") {
    array = array.reverse()
    }
  else array
  
  
  // Take away zeroes
  for (var i = 0; i <= 3; i++) {
    if (array[i] == 0)
      array.splice(i,1)
  }
  
  
  // Initial adding
  var new_array = [];
  var i = 0;
  while (i < array.length) {
    if (array[i] == array[i+1]) {
      new_array.push(array[i] + array[i+1])
      i += 2
    }
    else {
      new_array.push(array[i])
      i += 1;
    }
  }
  
  // Take away zeroes again
  for (var i = 0; i <= 3; i++) {
    if (new_array[i] == 0)
      new_array.splice(i,1)
  }
  
  
  // Pad up to length of 4
  for(var i = new_array.length; i < 4; i++)
    new_array.push(0);  
    
  if (direction == "right") {
    return new_array.reverse()
    }
  else return new_array

}

// console.log(condense([0,2,2,4],"right"))
// console.log(condense([2,2,2,4]))
// console.log(condense([0,0,4,4]))
// console.log(condense([0,4,4,4],"right"))
// console.log(condense([2,0,4,0]))


// 4.  Create left, right, up, down functions

function left() {
  for (var i = 0; i <= 3; i++) {matrix[i] = condense(matrix[i])};
  displayMatrix()
}

function right() {
  for (var i = 0; i <= 3; i++) {matrix[i] = condense(matrix[i],"right")};
  displayMatrix()
}

function transpose() {
  var new_matrix = {}
  for (var i = 0; i <= 3; i++) {
    new_matrix[i] = []
    for (var j = 0; j <= 3; j++) {
      new_matrix[i].push(matrix[j][i])
    }
  }
  return new_matrix
}

function up() {
  matrix = transpose(matrix)
  for (var i = 0; i <= 3; i++) {matrix[i] = condense(matrix[i])}
  matrix = transpose(matrix)
  displayMatrix()
}

function down() {
  matrix = transpose(matrix)
  for (var i = 0; i <= 3; i++) {matrix[i] = condense(matrix[i],"right")}
  matrix = transpose(matrix)
  displayMatrix()
}

// displayMatrix()
// left()
// right()
// up()
// down()

// 5. Allow user to call L, R, U, D


// Reflection
//
//
//
//
//
//
//
//