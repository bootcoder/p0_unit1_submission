# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is an array of ints
# 
# What is the output? (i.e. What should the code return?)
# The output should be the average of the ints against a standard grade chart

# What are the steps needed to solve the problem?
# 
# *PSEUDO*
#
# FUNCTION get_grade
# 	define get_grade a function that takes a single argument. 
# 	create var avg and set to the sum of the array divided by its length
#
# 	CASE avg
# 		assign average to corresponding letter grades
# 	ELSE
# 		error statement
# 	END CASE
# END FUNCTION


# 2. Initial Solution

def get_grade(input)
	
	avg = input.reduce(:+).to_f / input.length

	case avg
	when  0..59
		"F"
	when 60..69
		"D"
	when 70..79
		"C"
	when 80..89
		"B"
	when 90...100 
		"A"
	else
		"avg:#{avg}, Somethings wrong Jim!" 
	end
end



# 3. Refactored Solution

def get_grade(input)
	
	avg = input.reduce(:+).to_f / input.length

	case avg
	when  0...60
		"F"
	when 60...70
		"D"
	when 70...80
		"C"
	when 80...90
		"B"
	when 90..100 
		"A"
	else
		"avg:#{avg}, Somethings wrong Jim!" 
	end
end


# 4. Reflection 
# 
# What parts of your strategy worked? What problems did you face?
# Everything worked. I refactored to a more accurate version. 
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# Looked around RDoc at reduce and inject some more. 
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# ...
# 
# Did you learn any new skills or tricks?
# ...
# 
# How confident are you with each of the learning objectives?
# Very confident with if/else statements. 
# Havn't looked at RegEx at all yet.
# Very Confortable with the other objectives.
# 
# Which parts of the challenge did you enjoy?
# Good practice I guess is always enjoyable.
# 
# Which parts of the challenge did you find tedious?
# ...
