def names_array(*names)
	names# << randomized_array(names)
end

def randomized_array(names)
	# random_array = names
	# random_array = random_array.sample(random_array.count).each_slice(2).to_a
	# random_array = names.each_slice(2).to_a
	random_array = names.sample(names.count).each_slice(2).to_a
	p random_array
end
