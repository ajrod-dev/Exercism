def contiguous_substrings(string, n)
  substrings = []
  (0..string.length - n).each do |i|
    substring = ""
    (0...n).each do |j|
      substring << string[i + j]
    end
    substrings << substring
  end
  substrings
end

# Example usage:
string = "49142"
n = 3
puts "3-digit series:"
puts contiguous_substrings(string, n)

n = 4
puts "\n4-digit series:"
puts contiguous_substrings(string, n)
