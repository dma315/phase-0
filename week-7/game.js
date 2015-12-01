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

var matrix = {
	0: [4444,0,0,0],
	1: [1,0,0,0],
	2: [2,0,0,0],
	3: [3,0,0,4444],
}

function pad4(a) {
	pad = 5 - a.toString().length;
	while (pad > 0) {
		a = " " + a.toString()
		pad--
	}
	return a
}

function arrayDisplay(array) {
	display = "";
	for(var i = 0; i < array.length; i++)
		display = display + pad4(array[i]);
	return display;
}

function displayMatrix() {
	for (var i = 0; i <= 3; i++) {
		console.log(arrayDisplay(matrix[i]))
		}
	}

displayMatrix()


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//