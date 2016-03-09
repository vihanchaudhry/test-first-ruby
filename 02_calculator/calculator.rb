def add x, y
	x + y
end

def subtract x, y
	x - y
end

def sum array
	total = 0
	array.each do |x|
		total += x
	end
	total
end

def multiply array
	total = 1
	array.each do |x|
		total *= x
	end
	total
end

def power x, e
	x ** e
end

def factorial x
	return x == 0 ? 1 : x * factorial(x - 1)
end
