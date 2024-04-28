def convert_base(digits, from_base, to_base)
  # Convert the digits to base 10
  base_10_number = digits.to_i(from_base)

  # Convert the base 10 number to the target base
  result = base_10_number.to_s(to_base)

  return result
end

# Test cases
puts convert_base("101010", 2, 10)  # Output: 42
puts convert_base("101010", 2, 3)   # Output: 1120
puts convert_base("1120", 3, 2)     # Output: 101010
