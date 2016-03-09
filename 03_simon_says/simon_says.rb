def echo arg
	arg
end

def shout arg
	arg.upcase
end

def repeat(*args)
	case args.size
	when 1
		return args[0] + " " + args[0]
	when 2
		return ((args[0] + " ") * args[1]).strip
	end
end

def start_of_word(word, n)
	word[0..n-1]
end

def first_word(word)
	word.split(" ")[0]
end

def titleize(title)
	title = title.split
	words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "an"]
	title.each do |word|
		word.capitalize! unless words_no_cap.include?(word)
	end
	title.first.capitalize!
	title.join(" ")
end