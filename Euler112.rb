def factorial(n)
	if n == 0 
		return 1
	else
		return n*factorial(n-1)
	end
end

def combinations(n,k)
	raise ArgumentError if k > n 
	combinations = factorial(n)/(factorial(k)*factorial(n-k))
	return combinations
end

def calc_block_comb(size, color_size)
	max_color = ((size)/color_size).to_i
	comb = 0
	for number in 1..max_color
		black = size-(number*color_size)
		comb += combinations(black + number , black)
	end
	return comb
end

RED_SIZE = 2
GREEN_SIZE = 3
BLUE_SIZE = 4

test_red = calc_block_comb(5,RED_SIZE)
test_green = calc_block_comb(5,GREEN_SIZE)
test_blue = calc_block_comb(5,BLUE_SIZE)

puts "Total combinations is #{test_red + test_green + test_blue}" 

red_comb = calc_block_comb(50,RED_SIZE)
green_comb = calc_block_comb(50,GREEN_SIZE)
blue_comb = calc_block_comb(50,BLUE_SIZE)
puts "Total combinations is #{red_comb + green_comb + blue_comb}"

