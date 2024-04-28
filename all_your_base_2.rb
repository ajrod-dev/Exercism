def convert_base(digits, from_base, to_base)
  # Convert digits to base 10
  base_10_number = 0
  digits.chars.each do |digit|
    base_10_number = base_10_number * from_base + digit.to_i
  end

  # Convert base 10 number to target base
  result = ""
  while base_10_number > 0
    remainder = base_10_number % to_base
    result = remainder.to_s + result
    base_10_number /= to_base
  end

  return result.empty? ? "0" : result
end

# Test cases
puts convert_base("101010", 2, 10)  # Output: 42
puts convert_base("101010", 2, 3)   # Output: 1120
puts convert_base("1120", 3, 2)     # Output: 101010
