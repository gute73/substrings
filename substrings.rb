def substrings(string, dictionary)
	matches = {}
	dictionary.each do |substr|
		string.downcase.scan(substr) do
			if matches[substr]
				matches[substr] += 1
			else
				matches[substr] = 1
			end
		end
	end
	matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("sigil", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)