
 # U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Amelia Downs
# 2. Vivek George
# 3. Jeff Kynaston
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to create a list
# As a user, I want to add items from list
# As a user, I want to remove items from list 
# As a user, I want to have quantities for each item
# As a user, I want to read my list
# As a user, I want to be able add the price of each item
# As a user, I want to sum the total price of the list
# As a user, I want to

# Pseudocode
# make grocery list class
# initialize method - sets up array or hash that would hold list, assign date
# add method - takes in item, qty
# remove method - takes in item, qty
# print list method - prints list of items and their qtys

# Your fabulous code goes here....

class GroceryList
  attr_reader :date_created
  def initialize
    @list = {}
    @date_created = Time.now
  end
  
  def add (item, qty)
    @list[item] = qty
  end
  
  def remove (item)
    @list.delete(item)
  end
  
  # will not print anything if the list is empty
  def print_list
      @list.each { |item, qty| puts "#{qty} #{item}" }
  end
  
end


# MORE pseudocode 
# create class called UserInput 
# give user statement
# initialize method: initialize a grocerylist class as an instance variable
# main method: start
#     in loop: asks the user for what they want to do (add, remove, print, exit)
# add method: prompt the user "what would you like to add", save input, 
#             prompt user "how many/much", save input






# DRIVER CODE GOES HERE. 
 
 list_1 = GroceryList.new
 puts list_1.date_created
 list_1.add("cookies", 100)
 list_1.print_list
 list_1.remove("cookies")
 list_1.print_list
 
 

# REFLECTION
 
 # This was the first time I had a GPS with three students. It was just 
 # as difficult as I imagined. Though I think we did a good job of continually 
 # switching roles and not leaving anyone out...hopefully.

 # We didn't get to finish the challenge, but I think we made solid headway on it. 

 # This is the first challenge where we were using command line prompts to run 
 # the program (not that my group made it that far in the gps). Though I 
 # think I understand the idea, I want to try it a few times before heading to 
 # DBC.


 