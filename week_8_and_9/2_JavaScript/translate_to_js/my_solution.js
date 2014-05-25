// U3.W8-9: Challenge you're converting


// I worked on this challenge by myself.

// 2. Pseudocode

// FizzBuzz

// Go through each element in the array 
// first check if it is divisibe by 3 
// 	yes: check if it is divisible by 15 
// 			yes: replace with "FizzBuzz"
// 			no: replace with "Fizz"
// 	no: check if divisible by 5
// 		yes: replace with "Buzz"
// 		no: leave the element alone. 



// 3. Initial Solution

// var super_fizzbuzz = function (num_array){

	
// 	for (var num = 0; num <num_array.length; num++){

// 		if (num_array[num] % 3 == 0){
// 			if (num_array[num]% 15 == 0){
// 				num_array[num] = "FizzBuzz"
// 			}
// 			else{
// 				num_array[num] = "Fizz"
// 			}
// 		}
// 		else if (num_array[num] % 5 == 0){
// 			num_array[num] = "Buzz"
// 		}

// 	}
// 	return num_array

// };

// Refactor

var super_fizzbuzz = function (num_array){

	
	for (num in num_array){

		if (num_array[num] % 3 == 0){
			if (num_array[num]% 15 == 0){
				num_array[num] = "FizzBuzz"
			}
			else{
				num_array[num] = "Fizz"
			}
		}
		else if (num_array[num] % 5 == 0){
			num_array[num] = "Buzz"
		}

	}
	return num_array

};




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


function assert(test, test_number) {
  if (test) {
    console.log(test_number + "false");
  }
  else{
	  console.log(test_number + "true");
  	return true;
	}
}

assert( (super_fizzbuzz([1, 1, 1]) === [1, 1, 1]), "1. " )
assert( (super_fizzbuzz([3, 6, 9]) === ["Fizz", "Fizz", "Fizz"]), "2. " )
assert( (super_fizzbuzz([5, 10, 24]) === ["Buzz", "Buzz", "Buzz"]), "3. " )
assert( (super_fizzbuzz([15, 30, 45]) === ["FizzBuzz", "FizzBuzz", "FizzBuzz"]), "4. " )



// 5. Reflection 

// I don't understand the JS assert statement as well as I do the Ruby one. 
// The ruby one is just so cute and short! 

// I don't feel near as confident with JS as I do with Ruby. With ruby I feel like 
// I could takle a multi part problem and I can link multiple files and break down the 
// code, but I just don't feel like I understand JS well enough to do that. 

// Mode code always feeled jumbled and disorganized to me. 






