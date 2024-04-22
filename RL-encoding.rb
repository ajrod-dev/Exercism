def run_length_encode(str)
  encoded = ""
  count = 1
  (1..str.length).each do |i|
    if i == str.length || str[i] != str[i - 1]
      encoded << count.to_s if count > 1
      encoded << str[i - 1]
      count = 1
    else
      count += 1
    end
  end
  encoded
end

def run_length_decode(str)
  decoded = ""
  count = ""
  str.chars.each do |char|
    if char.match(/\d/)
      count << char
    else
      repetitions = count.empty? ? 1 : count.to_i
      decoded << char * repetitions
      count = ""
    end
  end
  decoded
end

# Example usage:
original_str = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
encoded_str = run_length_encode(original_str)
decoded_str = run_length_decode(encoded_str)

puts "Original String: #{original_str}"
puts "Encoded String: #{encoded_str}"
puts "Decoded String: #{decoded_str}"
