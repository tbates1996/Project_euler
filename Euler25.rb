def fib_r(a,b,n)
	(n == 0) ? a : fib_r(b,a+b,n-1)
end

def fib n
	fib_r(0,1,n)
end

length = 10**999
n = 1

until fib(n) > length
	n += 1
end

puts fib(n)
puts n