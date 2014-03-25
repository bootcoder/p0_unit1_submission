# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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



# 4. Reflection 