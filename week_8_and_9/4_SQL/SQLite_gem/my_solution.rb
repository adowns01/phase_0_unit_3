# U3.W8/9: BONUS Using the SQLite Gem

# I worked on this challenge with Bridgette last week 
# I worked on the bonuses alone this week

# to login to the db: sqlite3 congress_poll_results.db 

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving =  $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_serving.each { |rep, years| puts "#{rep} - #{years} years" }
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (LOWER THAN GRADE #{grade_level})"
  lowest_level = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade_level}")
  puts lowest_level
end

def print_state_reps(*states)

  states.each do |state|
    puts "REPRESENTATIVES FROM #{state}" 
    state_rep = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")
    puts state_rep
    print_separator
  end
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

# def votes_per_congress_member()
# 	congress_ids = $db.execute("SELECT name, id FROM congress_members")

# 	congress_ids.each do |member|
# 		print "#{member[0]} - "
# 		puts $db.execute("SELECT COUNT(politician_id) FROM votes WHERE politician_id = #{member[1]}")

# 	end
# end 


# Refactored, so it only uses a SQLite statement
def votes_per_congress_member()
    puts $db.execute("SELECT congress_members.name, COUNT(votes.politician_id) FROM congress_members JOIN votes ON votes.politician_id = congress_members.id GROUP BY congress_members.name;")

  end
end 



# def print_voters_per_congress_member()
# 	congress_ids = $db.execute("SELECT name, id FROM congress_members")

# 	congress_ids.each do |member|
		
# 		name =  $db.execute("SELECT voters.first_name, voters.last_name FROM votes JOIN voters WHERE votes.voter_id = voters.id AND votes.politician_id = #{member[1]}")
# 		puts ""
# 		puts "#{member[0]}"
# 		name.each{|x| puts "#{x[0]} #{x[1]}, "}
# 	end

# end 


# I tried to get this one to work with only a SQL statement. Below is my sql statement. 

# SELECT congress_members.name, voters.first_name, voters.last_name FROM voters 
# JOIN votes ON voters.id = votes.voter_id 
# JOIN congress_members ON votes.politician_id = congress_members.id 
# GROUP BY congress_members.name;

# But that only prints one voter per congress person, I couldn't get it to print all of them. 

def print_voters_per_congress_member()
  congress_ids = $db.execute("SELECT name, id FROM congress_members")

  congress_ids.each do |member|
    
    name =  $db.execute("SELECT voters.first_name, voters.last_name FROM votes JOIN voters WHERE votes.voter_id = voters.id AND votes.politician_id = #{member[1]}")
    puts ""
    puts "#{member[0]}"
    name.each{|x| puts "#{x[0]} #{x[1]}, "}
  end

end 

s
# Note if you test this, there is A LOT of print outs.

# print_arizona_reps

# print_separator

# print_longest_serving_reps(35)
# # TODO - Print out the number of years served as well as the name of the longest running reps
# # output should look like:  Rep. C. W. Bill Young - 41 years

# print_separator
# print_lowest_grade_level_speakers(8)
# print_separator
# # TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# # TODO - Make a method to print the following states representatives as well:
# # (New Jersey, New York, Maine, Florida, and Alaska)
# print_state_reps("NJ", "NY", "ME", "FL", "AK")

# SELECT name, location FROM congress_members


votes_per_congress_member()
# print_voters_per_congress_member()










##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

# MY REFLECTION

# Like I said last week after I did this as a bonus, I really liked this challenge.
# I am glad I got the chance to do the bonuses, which I didn't complete last week. 
# I am very proud of myself because I *finally* got the JOIN to work! HORARY!
# However, I couldn't get the double JOIN to work the way I wanted. 
# I haven't been able to find really good examples online, so I've been doing 
# a lot of trial and error.

# A the the top of the code we assigned $db databases from another file
# This way I can interact with SQL with Ruby. The $ makes it a global variable 
# so I can access it without passing it as argument. 

# the #execute allows the followig SQL code to be execututed. So the line
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`
# means: display the names of the congress members who have worked in congress 
# for more than X number of years. 






