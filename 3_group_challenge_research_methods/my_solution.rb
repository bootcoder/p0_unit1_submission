# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|word| word.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|key,value| value == thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
#  I used the select method on both the array and hash. The big difference between how it is used
# between these two objects is that when using select on a hash you must use the key and value placeholder
# as opposed to just refering to single element as you would with an array. In the array method, inside the block
# passed to the select method I had it select all the words that after converted to a string (because of that integer 3)
# see if the word includes the thing_to_find. All the words, or elements that are turned into strings rather, that include
# the thing to find are returned.
# 
# The select method on the hash basically says go through and select only the keys and values where the value is equal
# to the thing_to_find, but since we only want to return the keys and the values, I attached the hash method .keys  
# to the end of the block so it would actually just return the keys of the keys and values that were selected in the 
# code block
# Person 2

def my_array_modification_method(source, thing_to_modify)
  mod_array = Array.new
  source.each { |x|
    if x.is_a? Integer
      mod_array << x += thing_to_modify
    else
      mod_array << x
    end
  }
  mod_array
end


def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
  source.each { |k,v|
			source[k] = v+thing_to_modify
  	}
end

# Identify and describe the ruby method you implemented. 
# 
# I used each to get through this challenge. 
# I did so because hash doesn't have a map function so
# I essential rewrote map to act on the array.
# The goal was to modify an array or hash.
#

# Person 3
# 
def my_array_sorting_method(source)

  source.map {|i| i.to_s}.sort.uniq

end


def my_hash_sorting_method(source)

  source.sort_by {|k,v| v}

end



# The first one maps the array and converts all the elements to strings. Then sorts the array and then I found this cool built-in method called uniq which returns only unique elements.




# The second method just sorts the hash by their keys.


# Person 4
def my_array_deletion_method(source, thing_to_delete)
    source.delete_if { |i| i =~ /#{thing_to_delete}/}
    print source
end

def my_hash_deletion_method(source, thing_to_delete)
    source.delete_if { |i| i =~ /#{thing_to_delete}/}
    print source
end

# examples of how to run them. The hash and array are in the original file.

# my_array_deletion_method(i_want_pets, "o");


# my_hash_deletion_method(my_family_pets_ages, "o")


# I used the delete_if method, which works for both hashes and arrays, and it will, as advertised,
# delete something only if it meets a certain requirement. I run delete_if on the source then, in the body of delete_if you define your own variable, in this case i used "i", which represents the elements in the source. From here we set the requirements "i" must meet to be deleted. Now if we were dealing with numbers it would be easy enough to say i == 2 or 1 < 3 or something like that, but since we are dealing with strings I went to regular expressions. the "+~ " is the sign for "is equal to regular expression". The two forward slashes encase the regular expression, and in this case we want the regular expression to the other argument, thing_to_delete, so we mark that was an argument with #{ }. The argument thing_to_delete much be a string, and it is case sensitive.

# If you have any questions please let me know!!!!


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# 
# 
# 
# 