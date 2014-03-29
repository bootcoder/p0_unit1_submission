# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by Mr. Hyde, with: Dr. Jekyll].

# 1. Pseudocode

# What is the input?
# The input is an array of ints or strings
# 
# What is the output? (i.e. What should the code return?)
# The code returns the middle array element, based on sorted order not initial location.
# 
# What are the steps needed to solve the problem?
# 
# *Pseudo*
# 
# FUNCTION median
# 
# define a function median that takes a single input argument
# sort the input with a bang
# create a variable half 
# set half equal to the input length divided by two
# 
# IF LOOP
#   if half is odd
#   return input[half]
# ELSIF
# 	if half is even
# 	return input[half] minus 0.5
# END LOOP
# 
# END Function 
# 


# 2. Initial Solution

# def median(input)
	
# 	input.sort!
# 	print input
	
# 	half = input.length/2
# 	puts "Half:#{half}"

# 	if (half % 2) == 1 # Odd
# 		return input[half]
# 	elsif (half % 2) == 0 # Even
# 		return input[half]-0.5
# 	else
# 		puts "Things that make you go Hmmmm"
# 	end

# end









# 3. Refactored Solution

# For the refactor I used in-line if statements which makes for a much shorter function. 
# additionally I removed the various puts statements I had added for flow observation.
# but the meat and potatoes are still the same. 


def median(input)
	
	input.sort!
	half = input.length/2

	return input[half] if (half % 2) == 1
	return input[half]-0.5 if (half % 2) == 0
	
end


# 4. Reflection 

# Why yes, I am glad I did this challenge in JS. Although it did require some tweaking.
# 
# 
# What parts of your strategy worked? What problems did you face?
# The math here was pretty basic so the strategy was straight forward. 
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# I used the knowledge I acquired from the JS challenge.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I feel like I have a good level of understanding with this level of programming. 
# 
# Did you learn any new skills or tricks?
# I implemented the one line if statements here which I havn't used a lot. Cleaner, I like it.
# 
# How confident are you with each of the learning objectives?
# Very confident with the learning objectives here.
# 
# Which parts of the challenge did you enjoy?
# The relief of opening it up and being all like, "I got this". That was very enjoyable.
# This false sense of security you guys are letting us have is super nice of you to do.
# I know you're going to turn up the heat real soon so anxiety level remains high!  
# :+)
# 
# Going through the refactor was nice as well. 
# I think I enjoy making my code better, a lot more than I enjoy the, writing it in the first place, part....
# 
# Which parts of the challenge did you find tedious?
# None 