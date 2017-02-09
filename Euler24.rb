def factorial(num)
	if num == 0
		return 1
	else
		num*factorial(num-1)
	end
end
def num_perm(num,start,finish)
	list = (start..finish).to_a
	n = list.length
	perm = ""
	remaining = num - 1

	for i in 1..n
		add = remaining / factorial(n-i)
		remaining = remaining % factorial(n-i)
		perm = perm + list[add].to_s
		list.delete_at(add)
		if remaining == 0
			break
		end
	end
	for i in 0..list.length 
		perm += list[i].to_s
	end
	return perm
end

puts num_perm(1000000,0,9)
puts num_perm(13,1,4)


