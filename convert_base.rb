def convert_base(number, from_base, to_base)
  # Convert the number to base 10
  base_10_number = number.to_i(from_base)

  # Convert the base 10 number to the target base
  result = base_10_number.to_s(to_base)

  return result
end

# Test cases
number = "101010"
from_base = 2
to_base = 10
puts "Number #{number} in base #{from_base} converted to base #{to_base}: #{convert_base(number, from_base, to_base)}"

number = "42"
from_base = 10
to_base = 2
puts "Number #{number} in base #{from_base} converted to base #{to_base}: #{convert_base(number, from_base, to_base)}"

number = "1120"
from_base = 3
to_base = 10
puts "Number #{number} in base #{from_base} converted to base #{to_base}: #{convert_base(number, from_base, to_base)}"
