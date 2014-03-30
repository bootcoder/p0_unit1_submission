# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Parjam Davoody].

# 1. Pseudocode

# What is the input?
# The method takes an array

# What is the output? (i.e. What should the code return?)
# The array of most common elements

# What are the steps needed to solve the problem?
# Define a function mode which accepts a single input
# Variable counts = Hash.new populated by 0
# Iterate through the input array and for each element we will add to the count
# Create return array and set it equal to an empty array
# Iterate through counts using keys and values
# If statement where value == max counts then push the key to return array



# 2. Initial Solution

def mode (array)
    count_hash = Hash.new (0)
    array.each { |x| count_hash[x] += 1 }
    result_array = []
    
    count_hash.each do |key, value|
        if value == count_hash.values.max
          result_array << key
        end
    end
  return result_array
end


# 3. Refactored Solution

def mode (array)
  counter = Hash.new(0)
  array.each { |x| counter[x] += 1 }
  results = []
  counter.each do |k, v|
    results << k if v == counter.values.max
  end
  results
end

# 4. Reflection

# What parts of your strategy worked? What problems did you face?
# I knew from the instructions that I would need both hashes and arrays for this
# challenge to work. Well I didnt know but I infered & happened to infer correctly.
# The stategy was to go thought the array and add its elements to a hash as keys. 
# We set the hash to contain 0 by default because you can't add to nil

# What questions did you have while coding? What resources did you find to help you answer them?
# How to push the right stuff to the right place and then sort those values.
# I found several difernt approaches online for mode within ruby.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm still not super comfortable with hashes. I mean the principle of it seems so clear.
# But the practice of working through them is difficult. IDK why.....

# Did you learn any new skills or tricks?
# hash.values.max was a new and nifty trick

# How confident are you with each of the learning objectives?
# Pretty confident with the objective. Need more array/hash practice.

# Which parts of the challenge did you enjoy?
# This was the most challenging challenge of the week, that was enjoyable. 
# I liked that we really had to think through it to get green.

# Which parts of the challenge did you find tedious?
# We looked for a while at how to do this with just an array method. 
# Found no joy and eventually came back to the hash. But I know its possible!

=begin

We came across this in our research but we did not use it.
We would both be interested in how it works...

def one_mode(ary)
  ary.max_by { |x| ary.count(x) }
end

=end