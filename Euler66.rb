def find_range(range)
	range = (1..range).to_a
	range.select { |number| Math.sqrt(number) % 1 != 0} 
end

num_d = find_range(50)
max_d = 0
max_x = 0
num_d.each do |number|
	y = 1
	x = Math.sqrt(1+(number*(y**2)))
	until ((x%1) == 0)
		y = y+1
		x = Math.sqrt(1+(number*(y**2)))
	end
	if x > max_x 
		max_x = x
		max_d = number
	end
end
puts "The max x value is #{max_x.to_i} and it occurs when d is #{max_d}"