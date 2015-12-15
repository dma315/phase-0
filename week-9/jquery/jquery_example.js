// U3.W9:JQuery


// I worked on this challenge with Jack Abernathy.
// This challenge took me 0.75 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

  $('h1').css({'color': 'blue'})
  $('p[class*="stupid"]').css({'background-color': 'green'})


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  $("body>h1").css({
    "border" : "1px solid red",
    "color" : "black",
    "visibility" : "visible"
  })

  $("div.mascot>h1").html("Chorus Frogs")

//RELEASE 5: Event Listener
  // Add the code for the event listener here

 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.virginiaherpetologicalsociety.com/amphibians/frogsandtoads/upland-chorus-frog/sp_Upland%20Chorus%20Frog%20(Pseudacris%20feriarum%20feriarum)002.jpg')
  })

 $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'devbootcamp-logo-new.png')
 })

//RELEASE 5: Experiment on your own
$('body>h1').animate({
  opacity: .25,
  "margin-top": "50px",
  // height: "toggle"
  }, 3000);




})  // end of the document.ready function: do not remove or write DOM manipulation below this.


// What is jQuery?
//    A library that helps us manipulate the DOM with some shortcuts!

// What does jQuery do for you?
//    Allows us to more easily manipulate the DOM, using its built in methods.

// What did you learn about the DOM while working on this challenge?
//    That structuring it really well is REALLY important. 
//    With bad naming conventions or poor structure, I imagine the JQuery could be a total nightmare. 