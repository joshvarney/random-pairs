def randomized_array(names)
	names = names[0]
		if names == nil
			random_array = "You didn't enter any names"
		else 		
			names.delete_if {|x| x == ""}
				if names == []
					random_array = "You didn't enter any names"
				elsif names.count == 1
					random_array = names
 				else 
 					random_array = names.sample(names.count).each_slice(2).to_a
						if random_array[-1].count == 1
							random_array2 = random_array.last(2)
							random_array2 = random_array2[0] + random_array2[1]
							random_array = random_array[0..-3]
							random_array.push(random_array2)
						else 
							random_array
						end
				end
		end
end