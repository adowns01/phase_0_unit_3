# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode

# create fib numbers. Each time check to see if the newest fib number is 
# equal to the number we are testing to see is a fib number. 
# if it is not, keep creating for fib nubers and checking.

# Stop checing when a match is found, or when the fib number
# is larger than the number being tested. This means that it is NOT 
# a fib number. 


# 3. Initial Solution

# def is_fibonacci?(num)


# 	fib_first = 1 
# 	fib_second = 1
# 	while (fib_second <= num)
# 		fib_next = fib_first + fib_second
# 		fib_first = fib_second
# 		fib_second = fib_next
# 		return true if fib_next == num 
# 	end 

# 	return false

# end



# 4. Refactored Solution

# This above solution works, but it has to create the whole list of fib 
# numbers each time a new number is called. This time I am going to 
# make an array to store the fib numbers in.


$fib_list = [0, 1]

def is_fibonacci?(num)

# If the list of fib numbers goes up to a number larger 
# than the number being tested, then just check to see if 
# the test number is in the list.

return $fib_list.include? (num) if (num <= $fib_list[-1])

	# if the list is not long enough to tell, 
	# start making more fib numbers starting at the end 
	# of the list
	fib_first = $fib_list[-2]
	fib_second = $fib_list[-1]

	# stop creating the list, when the numbers are larger 
	# than the number being testing
	while (fib_second <= num)
		# find next number
		fib_next = fib_first + fib_second
		# add new number to array
		$fib_list.push(fib_next) 
		# move up the iterators
		fib_first = fib_second
		fib_second = fib_next
		# if the number is found, stop
		return true if fib_next == num 
	end 
	# if the number was never found, it is not a fib number
	return false

end




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

# returns true when a integer is one number of the Fibonacci sequence
assert {is_fibonacci?(random_fibonacci) == true}

# returns true with a large Fibonacci number
assert {is_fibonacci?(8670007398507948658051921)== true}

# returns false when it's not in the Fibonacci seqence
assert {is_fibonacci?(random_fibonacci+100)== false}

# returns false on large non-Fibonacci numbers
assert {is_fibonacci?(927372692193078999171)== false}


# 5. Reflection

# The second version does use more memory, but it also goes faster. 
# Though the difference with these asser statements is only 7.1e-05 vs 
# 7.3e-05, if it was a function that was used constantly, more time would
# be saved. 

# This challenge went really quickly for me because to prep for my interview 
# with DBC, I solved a lot of Project Euler problems as Ruby practice. 
# Project Euler has a lot of questions regarding fib numbers (and primes, 
# which are my favorite), so I was throughly prepared for this challenge. 

# I look forward to seeing how other people handle this challenge, so I 
# can see other methods. 





