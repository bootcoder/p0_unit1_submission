# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is an array.
# What is the output? (i.e. What should the code return?)
# total will return the sum of array elements
# sentence_maker will return a properly formatted sentence.
# What are the steps needed to solve the problem?
# total:
# iterate through array and add each element.
# sentence_maker:
# capitalize first element of array
# join the remaining elements (excluding first element!) along with spaces and a period at the end. 


# 2. Initial Solution

def total(input)
	input.reduce { |sum, element| sum + element }
end

def sentence_maker(input)
	input[0].capitalize + " " + input[1..input.length].join(" ") + "."
end




# 3. Refactored Solution
# I do not fully understand why this works ( I'm calling it clown face.) But I get the basics of it.
# before the : is the starting point and after the : is the operation called. 

def total(input)
	input.reduce(:+)
end

# def sentence_maker(input)

# end

# 4. Reflection 

# It's been a little while since I've done any ruby. Things get rusty I guess. I know there's a better
# way to handle the sentence maker. Will have to do some research and figure it out.

# Other than that though. This challenge was not challenging. My strategy was to use the simplest 
# path possible to pass the provided tests. I met with a degree of success in this strategy because 
# I know there is a better way to do the second problem...

# In this challenge I learned a bit more about how the reduce method works.
