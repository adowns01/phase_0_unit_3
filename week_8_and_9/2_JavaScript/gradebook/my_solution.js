 /*
# U3.W8-9: Gradebook from Names and Scores

# You will work with the following two variables.  The first, students, holds the names of four students.  
# The second, scores, holds groups of test scores.  The relative positions of elements within the two 
# variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

# Do not alter the students and scores code.

# I worked on this challenge with: 
# #1. Kirstin Jarchow
# #2. Amelia Downs 

# */

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

// var average = function(scores){
//     var len = scores.length;
//     var sum = 0;
//     for (var i = 0; i < len; i++){
//         sum += scores[i];
//     }
//     return sum / len;
// };

// var gradebook = {};

// var add_students = function(arr){
//     var len = arr.length;
//     for (var i = 0; i < len; i++){
//         gradebook[arr[i]] = {};
//     };
// };

// add_students(students);

// var init_scores = function(students, scores){
//     if (students.length == scores.length){
//         len = students.length;
//         for (var i = 0; i < len; i++){
//             gradebook[students[i]].testScores = scores[i];
//         };
//     };
// };

// init_scores(students, scores);

// gradebook.addScore = function(name, score){
//     this[name].testScores.push(score);
// };

    
// gradebook.getAverage = function(name){
//     return average(this[name].testScores);
// };





// __________________________________________
// Refactored Solution

// input : an array of numbers 
// output: a number, the average of the # in the array
// steps : sums the items in the array then divides by the length
//      of the array
var average = function(scores){
    var len = scores.length;
    var sum = 0;
    for (var i = 0; i < len; i++){
        sum += scores[i];
    }
    return sum / len;
};

var gradebook = {};

// input : array of strings
// output: none 
// steps : loops through the array of names, adds each name to the 
//      obj gradebook and makes each of them an obj
var add_students = function(names){
    var len = names.length;
    for (var i = 0; i < len; i++){
        gradebook[names[i]] = {};
    };
};

add_students(students);

// input : array of strings, array containing array of scores for each student 
// output: none
// steps : loops through each student name, finds it in gradebooks,
//      adds their score to the property testScores
var init_scores = function(students, scores){
    if (students.length == scores.length){
        len = students.length;
        for (var i = 0; i < len; i++){
            gradebook[students[i]].testScores = scores[i];
        };
    };
};

init_scores(students, scores);

// input : string, number 
// output: none
// steps : adds the score to the name in gradebook
gradebook.addScore = function(name, score){
    this[name].testScores.push(score);
};

// input : string (name)
// output: average of all scores for that peson
// steps : calls function average on the array of scores
gradebook.getAverage = function(name){
    return average(this[name].testScores);
};






// __________________________________________
// Reflect

// It was more difficult going back to JS from Ruby than I thought, so I was glad
// I had a partner who was on the same page. We both seemed to have a good idea of 
// what needed to happen, even if we had to look up a lot of syntax. 

// It was an interesting pair becasue I am much more OO whereas she was more into FP. 

// When I was refactoring, I kept thinking of Ruby methods that I wanted to use 
// to replace the for loops.

// I loved having the nearly written test code, I love challenges like this. 









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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)