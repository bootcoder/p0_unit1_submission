# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: W. Butler Bushyhead].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# The input will be a minimum value and an optional element to be added to array
# 
# What is the output? (i.e. What should the code return?)
# The output is an array. The array could be modified or not. The method could create a new array or not
# 
# What are the steps needed to solve the problem?
# 
# *Initial PSEUDO*
# 
# # create method pad that takes two arguments, integer and value (which is optional)
# create new array equal to self
# pad should be non destructive
# modify the array class
# if pad length is less than or equal to integer, return self
# else push value x number of times to array where x is integer minus the length of self
# set value to nil initially 
# if value exists, pad with value
# return new array
 
# create method pad! that takes two arguments, integer and value(which is optional)
# pad! should be destructive
# 
# 
# 
# *Refactored PSEUDO*
# 
# create two methods that act upon an array
# they should be the same method, where one acts destructively and one does not. 
# the purpose of the method should be to pad an array with a number of additional elements
# the method should pad the array with a blank position or an optional value argument.
# 
# modify array class
#   FUNCTION pad
#   create a method pad, which accepts two arguments. set the second argument to nil
#   
#   create variable for modified array and set it equal to a new array.
#   iterate through self pushing array elements into the modified array.
#   IF LOOP
#     if the modified array's length is less than or equal to the 1st argument 
#     return modified array
#   ELSE
#     create a variable difference, set it equal to the 1st argument minus the length of the modified array
#     iterate through the modified array the number of times difference yields, 
#     pushing the 2nd argument each time.
#     return modified array
#   END IF
# END FUNCTION
# 
# 
# 

# 2. Initial Solution

class Array
  def pad(integer, value = nil)
    new_array = Array.new
    self.each { |i| new_array.push(i) }
      if integer <= new_array.length
        return new_array
      else
        difference = integer - new_array.length
        difference.times{new_array.push(value)}
        return new_array
      end
  end
end

#pad!
class Array
  def pad!(min_size, value = nil)
    return self if min_size <= self.length
    difference = min_size - self.length
    difference.times{self.push(value)}
    #return self if min_size < self.length
    return self
  end
  
end


# 3. Refactored Solution

#pad

class Array
  def pad(min_size, value = nil)
    new_array = Array.new
    self.each { |i| new_array.push(i)}
    return new_array if min_size <= new_array.length
    (min_size - new_array.length).times{new_array.push(value)}
    return new_array
  end
end


#pad!

class Array
  def pad!(min_size, value = nil)
    return self if min_size <= self.length
    (min_size - self.length).times{self.push(value)}
    return self
  end
end




# 4. Reflection 


# What parts of your strategy worked? What problems did you face?
# The strategy here was to add a given number of elements to a given array. 
# We used a class method to accomplish this. 
# Problems included proper implementation of self and how to do ! vs !!
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# We goggled around for the particulars on how self works within method calls. 
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Not having trouble with the concepts. 
# My biggest problem right now is over thinking the first step. 
# Once the ball is rolling everything starts to click through pretty quick.
# 
# Did you learn any new skills or tricks?
# I feel a lot more comfortable with creating methods and using self now.
# 
# How confident are you with each of the learning objectives?
# Very confident with the learning objectives.
# 
# Which parts of the challenge did you enjoy?
# I really enjoyed the pairing. We had a good time and both profited from the experience.
# Also the learning new things part is getting better every day.
# 
# Which parts of the challenge did you find tedious?
# None. I really enjoyed it.



