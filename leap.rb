def leap_year?(year)
  # TODO: Check if the year is evenly divisible by 4
  # If it is, continue to the next step, otherwise, return false

  # TODO: Check if the year is evenly divisible by 100
  # If it is, check if it's also evenly divisible by 400
  # If it is, return true, otherwise, return false

  # TODO: If the year is not evenly divisible by 100, but it's evenly divisible by 4,
  # return true as it's a leap year

  # TODO: If none of the above conditions are met, return false
end

# Test cases
puts leap_year?(1997) # Should print false
puts leap_year?(1900) # Should print false
puts leap_year?(2000) # Should print true
