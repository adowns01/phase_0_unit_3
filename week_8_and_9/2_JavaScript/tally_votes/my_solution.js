// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge with: 
// 1. Amelia Downs
// 2. Britney Van Valkenburg

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
    president: { "Bob": 1 },
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

// Iterate through votes read who they voted for for prez, add that name
// to prez dictionary if it isn't already there. If it is incriment vote count
// by one.
// Iterate through votes read who they voted for for viceprez, add that name
// to viceprez dictionary if it isn't already there. If it is incriment vote count
// by one.
// Iterate through votes read who they voted for for secretary, add that name
// to secretary dictionary if it isn't already there. If it is incriment vote count
// by one.
// Iterate through votes read who they voted for for treasurer, add that name
// to treasurer dictionary if it isn't already there. If it is incriment vote count
// by one.

// For each office, go through the list and find out who has the most votes. 
// Assign that person to office.


// __________________________________________
// Initial Solution


// for (var vote in votes){

//   if (votes[vote].president in voteCount.president){
//     voteCount.president[votes[vote].president] += 1;
//   }
//   else{
//     voteCount.president[votes[vote].president] = 1;
//   }
//   //////////////////////////////VP
  
//     if (votes[vote].vicePresident in voteCount.vicePresident){
//     voteCount.vicePresident[votes[vote].vicePresident] += 1;
//   }
//   else{
//     voteCount.vicePresident[votes[vote].vicePresident] = 1;
//   }
//   ///////////////////////////////SECRETARY
  
//   if (votes[vote].secretary in voteCount.secretary){
//     voteCount.secretary[votes[vote].secretary] += 1;
//   }
//   else{
//     voteCount.secretary[votes[vote].secretary] = 1;
//   }
  
//   /////////////////////Treasurer
  
//   if (votes[vote].treasurer in voteCount.treasurer){
//     voteCount.treasurer[votes[vote].treasurer] += 1;
//   }
//   else{
//     voteCount.treasurer[votes[vote].treasurer] = 1;
//   }
  
// };

// var max = 0;
// var president = "";
// for (var nominated in voteCount.president) {
//   // console.log(voteCount.president)
//   if (voteCount.president[nominated] > max) {
//     max = voteCount.president[nominated];
//     president = nominated;
//   }
// }
// officers.president = president;

// stopped here and refactored...



// __________________________________________
// Refactored Solution

// Go through each position (prez, vp, sec, treasury)
for(position in officers){

// tally the votes for that position
  for (var vote in votes){
    // if the person has already been voted for, add 1 to their total votes
    if (votes[vote][position] in voteCount[position]){
      voteCount[position][votes[vote][position]] += 1;
    }
    // if the person has not been voted for, add them to vote count
    // with one vote
    else{
      voteCount[position][votes[vote][position]] = 1;
    }
  }

  var max = 0;
  var post = "";

  // Go through the total votes for the position
  for (var nominated in voteCount[position]) {
    if (voteCount[position][nominated] > max) {
      max = voteCount[position][nominated];
      post = nominated;
    }
  }
  // assign the person with the most votes the post
  officers[position] = post;
}






// __________________________________________
// Reflection

// I had a great time pairing with Britney for this challenge. I didn't have
// near as many problems adjusting to JS syntax as I did yesterday. Also, 
// I wasn't aware of the for...in syntax which wouldve been great (I think)
// for the last js challenge I did. 

// I think the one thing I need to focus on the most is when to use 
// hard brakets and when to use a dot when trying to access items in an obj

// I'm getting more and more excited every day!


// __________________________________________
// Driver Code:  Do not alter code below this line.


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