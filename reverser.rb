class Reverser
	def self.reverse(str)
		arr = []
		str.each_char{|i| arr.unshift(i)}
		arr.join
	end
end

p Reverser::reverse("strops")

#I know I could've simply used the reverse method, 
# however I wanted to code this problem without that method.