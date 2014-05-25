# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# Go through each element in the array 
# first check if it is divisibe by 3 
# 	yes: check if it is divisible by 15 
# 			yes: replace with "FizzBuzz"
# 			no: replace with "Fizz"
# 	no: check if divisible by 5
# 		yes: replace with "Buzz"
# 		no: leave the element a lone. 


# 3. Initial Solution

# def super_fizzbuzz(array)
# 	i = 0
# 	array.each do |x|  
# 		if (x % 3 == 0)
# 			if (x % 15 == 0)
# 				array[i] = "FizzBuzz"
# 			else
# 				array[i] = "Fizz"
# 			end
# 		else
# 			if(x % 5 == 0)
# 				array[i] = "Buzz"
# 			end
# 		end

# 		i +=1
# 	end 
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
	# this iterator will keep track of the location of the current element
	i = 0 

	# go through each item in the array
	array.each do |x| 
		# see if it is divisible by 3 		
		if (x % 3 == 0)
			# see if it is divisible by 15
			if (x % 15 == 0)
				array[i] = "FizzBuzz"
			else
				array[i] = "Fizz"
			end
		# if no divisible by 3, see if 
		# divisible by 5
		elsif (x % 5 == 0)
			array[i] = "Buzz" 		
		end

		i +=1
	end 
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end


def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

assert { super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100 }

assert { super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100 }

assert { super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100 }

assert { super_fizzbuzz([1,2,3]) == [1,2,'Fizz'] }

assert { super_fizzbuzz([15, 5, 3, 1]) ==['FizzBuzz', 'Buzz', 'Fizz', 1] }




# 5. Reflection 

# When I was writing the Pseudocode for this challenge, I spent about 5 minutes thinking 
# and writing on paper seeing how I could get the fewest # of comparisons. Right now 
# every single element is always compared twice. Using this method, I don't think 
# there is a way to get that number smaller, but I wonder if anyone else used a different 
# algorithm. I will have to check after this. 

# I really find that when I take time to pseudocode and work out the problems on paper 
# it makes the coding itself go much quicker and results in fewer errors. 



