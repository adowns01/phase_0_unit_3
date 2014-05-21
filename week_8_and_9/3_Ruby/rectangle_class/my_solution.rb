# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode



# 3. Initial Solution
# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end

#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )
#   end

#   def area() 
#   	return @width * @height;
#   end

#   def perimeter()
#   	return (@width * 2) + (@height * 2)
#   end

#   def diagonal()
#   	return Math.sqrt(@width**2, @height**2).to_f
#   end 

#   def square?()
#   	return @width == @height
#   end

# end




# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area() 
  	return @width * @height;
  end

  def perimeter()
  	return (@width * 2) + (@height * 2)
  end

  def diagonal()
  	return Math.hypot(@width.to_f, @height.to_f)
  end 

  def square?()
  	return @width == @height
  end

end





# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

rectangle =  Rectangle.new(10, 20) 
square =   Rectangle.new(20, 20) 


assert { rectangle.area == 200 }
assert { square.area == 400 }
assert { rectangle.perimeter == 60 }
assert { square.perimeter == 80 }
assert { rectangle.diagonal == 22.360679774997898 }
assert { square.diagonal == 28.284271247461902 }
assert { rectangle.square? == false}
assert { square.square? == true}










# 5. Reflection 

# Wow these challenges seem to be a little lopsided. The num_to_words challenge 
# took a lot of thinking and coding and this one was so easy! The one set back 
# that I did have was that for awhile I was calling "MATH" instead of "Math" and 
# I coudln't figure out what the problem was. 

# I'm glad I did this challenge because when I went to look to see if there was a 
# hypotenuse function built in (there was!) I got to see other cool built in math 
# functions. 

# So this is the last (mandatory) Ruby challenge before DBC. It still feels so 
# far away to me. I think that is partially because I still have a week of full
# time work left. I love my job, but I am excited to leave it behind and code 
# full time. 



