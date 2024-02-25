
class Year
  def self.leap?(year)
 
  if year % 4 != 0
    false
  elsif
    year % 100 == 0 && year % 400 == 0
      true
  elsif
    year % 100 != 0 && year % 4 == 0
      true
  else
    false
  end
 
  end
end

# Test cases
puts Year.leap?(1997) # Should print false
puts Year.leap?(1900) # Should print false
puts Year.leap?(2000) # Should print true
