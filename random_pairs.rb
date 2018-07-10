# def names_array(*names)
	# names.count
	# names << randomized_array(names)
	# names = names[names.count..-1]
# 	names
# end
def randomized_array(names)
	random_array = names.sample(names.count).each_slice(2).to_a
	if random_array[-1].count == 1
		random_array2 = random_array.last(2)
		random_array2 = random_array2[0] + random_array2[1]	
		random_array = random_array[0..-3]
		random_array.push(random_array2)
		p random_array
	else 
		p random_array
	end
end
