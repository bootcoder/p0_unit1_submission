i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}
            
            
            

def my_hash_modification_method(source, things_to_modify)
source.each {
|k, v| source[k] = v + things_to_modify 
}
end

def my_array_modification_method(source, thing_to_modify)
  mod_array = Array.new
  source.each { |x|
  	if x.is_a? Integer
			mod_array << x = (x+thing_to_modify)
		else
			mod_array << x
		end
  }
  mod_array
end

p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]

p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
