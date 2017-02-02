def is_prime num1
	for i in 2...num1
		if (num1%i) == 0
			return false
		end
	end
	true
end

def factor n
	factor = []

	for number in 2...Math.sqrt(n)
		if n % number == 0
			factor << number
		end
	end
	return factor
end

def prime_factor n
	prime_factor = []
	fac = factor(n)
	fac.each do |num|
		if is_prime(num)
			prime_factor << num
		end
	end
	prime_factor
end


puts prime_factor(600851475143)
puts ""
puts prime_factor(65975)