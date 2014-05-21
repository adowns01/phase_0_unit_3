# U3.W8-9: Numbers to English Words


# I worked on this challenge by myself.

# 2. Pseudocode

# Turn the integer into an array of single digits. 
# Starting at the beginning of the array, call different pre-written 
# arrays of the english equivalent 




# 3. Initial Solution

$ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
$tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
$teens =["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
# def in_words (num)

# 	return "zero" if num == 0

# 	name = ""

# 	num_array = num.to_s.split("").map { |e| e.to_i }

# 	len = num_array.length

# 	if (num_array[0] == 1)
# 		name += $teens[num_array[1]]
# 	else
# 		name += $tens[num_array[0]] + " "
# 		name += $ones[num_array[1]]
# 	end

# 	return name
	

# end




# 4. Refactored Solution
# def in_words (num)

# 	return "zero" if num == 0

# 	name = ""

# 	num_array = num.to_s.split("").map { |e| e.to_i }

# 	len = num_array.length

# 	name = hundreds(name, num_array, 0) if len == 3
# 	name = tens(name, num_array, 0) if len == 2
# 	name = ones(name, num_array, 0) if len == 1


# 	return name 
# end

# def hundreds (name, num_array, start)
# 	name += $ones[num_array[start]] + " hundred "
# 	return tens(name, num_array, start+1)
# end 

# def tens (name, num_array, start)
# 	return name += $teens[num_array[start+1]] if (num_array[start] == 1)	
# 	name += $tens[num_array[start]] + " "
# 	return ones(name, num_array, start+1)
# end 

# def ones (name, num_array, start)
# 	return name += $ones[num_array[start]]
# end 

# 4 CONT. Refactor NUMBER2
# def in_words (num)
# 	# no other number has the word "zero" in it, so this is a special case
# 	return "zero" if num == 0 

# 	# the name starts blank, words will be added to it
# 	name = ""

# 	# change int to an array of intigers 
# 	num_array = num.to_s.split("").map { |e| e.to_i }

# 	len = num_array.length

# 	# add zeros to the front of the array until the length 
# 	# of the array is divisible by 3
# 	num_array = [0]*(3 - len%3) +  num_array if (len %3 != 0)

# 	# the length is now longer. len_left will be used as an iterator
# 	len = num_array.length
# 	len_left = len

# 	# the more words billion, trillion, etc you had the more this program 
# 	# can handle
# 	large_nums = ["",  "thousand", "million"]

# 	# start at the beginning of the array until there are no numbers
# 	while len_left > 0 

# 		if (num_array[len-len_left] == 0 && num_array[len-len_left+1] == 0 && num_array[len-len_left+2] == 0)
# 		else	
# 			name = hundreds(name, num_array, len-len_left)

# 			name += " " + large_nums[(len_left)/4] + " "
# 		end
# 		len_left -=3

# 	end

	

# 	return name.split.join(' ')
# end



# def hundreds (name, num_array, start)
# 	name += $ones[num_array[start]] + " hundred " if num_array[start] != 0
# 	return tens(name, num_array, start+1)
# end 



# def tens (name, num_array, start)
# 	# check if it is a "teen" and thus an odd case
# 	return name += $teens[num_array[start+1]] if (num_array[start] == 1)

# 	name += $tens[num_array[start]] + " "
# 	return ones(name, num_array, start+1)
# end 




# def ones (name, num_array, start)
# 	name += $ones[num_array[start]]
# 	return name 
# end 



# 4 CONT. REFACTOR #3

def in_words (num)
	# no other number has the word "zero" in it, so this is a special case
	return "zero" if num == 0 

	# the name starts blank, words will be added to it
	name = ""

	# change int to an array of intigers 
	num_array = num.to_s.split("").map { |e| e.to_i }

	len = num_array.length

	# add zeros to the front of the array until the length 
	# of the array is divisible by 3
	num_array = [0]*(3 - len%3) +  num_array if (len %3 != 0)

	# the length is now longer. len_left will be used as an iterator
	len = num_array.length
	len_left = len

	# the more words billion, trillion, etc you had the more this program 
	# can handle
	large_nums = ["",  "thousand", "million", "billion", "trillion", "quadrillion"]

	# Trillion, Quadrillion, Quintillion, Sextillion, Septillion, Octillion, Ninillion, Decillion


	if (len > large_nums.length*3)
		return "num to large"
	end

	# start at the beginning of the array until there are no numbers left
	while len_left > 0 
		# if there are 3 zeros next, skip them
		if !three_zeros?(num_array,len-len_left)
			# naming starts at the hundreds then cascades
			name = hundreds(name, num_array, len-len_left)
			# add extra name (like thousand, million, etc, as needed)
			name += " " + large_nums[(len_left-1)/3] + " "
		end
		len_left -=3
	end
	# extra spaces can get in the name, this removes them.
	return name.split.join(' ')
end


# input: checks to see if the next three numbers in array are 0
# output: true or false
def three_zeros?(num_array, start)
	if (num_array[start] == 0 && num_array[start+1] == 0 && num_array[start+2] == 0)
		return true
	end 
	return false 
end

def hundreds (name, num_array, start)
	# if the number isn't zero add words!
	name += $ones[num_array[start]] + " hundred " if num_array[start] != 0

	# next comes the 10s spot
	return tens(name, num_array, start+1)
end 

def tens (name, num_array, start)
	# check if it is a "teen" and thus an odd case
	return name += $teens[num_array[start+1]] if (num_array[start] == 1)

	# else add the correct word
	name += $tens[num_array[start]] + " "

	# next comes the 1s spot
	return ones(name, num_array, start+1)
end 

def ones (name, num_array, start)
	name += $ones[num_array[start]]
	return name 
end 










# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end


assert { in_words(0) == "zero"}
assert { in_words(10) == "ten"}
assert { in_words(15) == "fifteen"}
assert { in_words(48) == "forty eight"}
assert { in_words(100) == "one hundred"}
assert { in_words(1000) == "one thousand"}
assert { in_words(10000) == "ten thousand"}
assert { in_words(100000) == "one hundred thousand"}
assert { in_words(1000000) == "one million"}
assert { in_words(10000000) == "ten million"}
assert { in_words(100000000) == "one hundred million"}

# num = rand(1000000000)
# puts num
# puts in_words(num)

# 5. Reflection 

# This is the first time I ever refactored 3 times. But it does work for any # under 999 quadrillion
# and if you want anything larger you'll just have to add the words (quintillion, etc) to the array 
# on line 173. 

# It took a lot of drawing out numbers on paper and seeing the patterns. If you told me that you now 
# wanted me to add in hypins I might cry. 

# I was little sloppy with adding spaces and then cleaning it at the end, but it works
# and if I wanted to check I think it would be a lot of extra code for what I can fix easily 
# using a #split.join(" ") combo.

# I do wish the code was more readable. I added comments, but it still looks bad to me. 



