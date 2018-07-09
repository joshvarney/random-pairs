def names_array(*names)
	p names
end

def randomized_array(*names)
	random_array = names.sample(names.count)
	p random_array
end
