# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# Copy solution here:

class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end




# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:

class Array 

	def pad!(padSize, padVal = nil)
		if padSize <= self.length
			self
		else 
			(padSize - self.length).times do self << padVal end
			self
		end
	end


	def pad(padSize, padVal = nil)

		if padSize <= self.length
			Array.new(self)
		else
			self + Array.new(padSize - self.length, padVal)
		end
	end

end



# 3. My original solution:

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


# 4. My refactored solution:

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