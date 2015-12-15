// Release 1:  User Stories
// 1. As a shopper, I'd like to create a new grocery list
// 2. As a shopper, I'd like to add a new item to the grocery list
// 3. As a shopper, I'd like to remove an item from the grocery list
// 4. As a shopper, I'd like to update quantities on my list
// 5. As a shopper, I'd like to print my list

// Release 2:  Psuedocode
// 1. Create an object that allows me to store both items and quantities, with a date for the list
// 2. Create a function that allows me to add an item to the list with an optional quantity
// 3. Create a function that allows me to remove an item from the list
// 4. Create a function that checks for whether the item exists, and if so, updates to a specified quantity 
// 5. Print out all the items in the list

// Release 3:  Initial Solution / Refactored Solution (this was pretty straightforward I think)

function GroceryList(date) {

  // Initiates new list
  this.items = {};
  this.date = date;

  // Adds item
  this.addItem = function(new_item, quantity) {
    if (this.items.hasOwnProperty(new_item)) {
      console.log("Item already exists in the list.")
    } else {
      this.items[new_item] = quantity
    }
  };

  // Removes item
  this.removeItem = function(item_to_remove) {
    if (this.items.hasOwnProperty(item_to_remove)) {
      delete this.items[item_to_remove];
    } else {
      console.log("Cannot remove an item that isn't in the list.");
    }
  };

  // Updates quantity
  this.updateQuantity = function(item_to_update, quantity) {
    if (this.items.hasOwnProperty(item_to_update)) {
      this.items[item_to_update] = quantity
    } else {
      console.log("Item does not exist, cannot update quantity.")
    }
  };

  // Prints list
  this.print = function() {
    console.log("Items to buy on " + this.date);
    for (var i in this.items) {
      console.log(i + ": " + this.items[i]);
    }
  }
}

// Driver Code

// 1. Create a new list
var decemberList = new GroceryList("12/15/15");
console.log(decemberList.date);
console.log(decemberList.items);

// 2. Add new item
decemberList.addItem("banana",5);
console.log(decemberList.items);
decemberList.addItem("apple",2);
console.log(decemberList.items);
decemberList.addItem("banana",4);
console.log(decemberList.items);

// 3. Remove an item from the list

decemberList.removeItem("banana");
console.log(decemberList.items);
decemberList.removeItem("onion");
console.log(decemberList.items);

// 4. Update quantities

decemberList.updateQuantity("apple",5);
console.log(decemberList.items);
decemberList.updateQuantity("onion",5);
console.log(decemberList.items);

// 5. Print list
decemberList.addItem("onion",3);
decemberList.addItem("frosted flakes",1);
decemberList.addItem("almond milk",1);
decemberList.print();

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//    Solidified the idea of a JavaScript function as a class like object
//    Was also great to see that for..in works for objects
//    Good to use hasOwnProperty and get some practice

// What was the most difficult part of this challenge?
//    Nothing crazy about this. Just needed to test some syntax and code to make sure it worked the way it was supposed to.

// Did an array or object make more sense to use and why?
//    Object -- similar to the Ruby exercise, since we were storing 2 pieces of information