require 'time'

def gigasecond_anniversary(birth_date)
  # Parse the birth date string into a Time object
  birth_time = Time.parse(birth_date)
  
  # Calculate the gigasecond anniversary
  gigasecond_anniversary_time = birth_time + 10**9
  
  # Format the result as a string in the desired format
  gigasecond_anniversary_time.strftime("%B %d, %Y at %H:%M:%S")
end

# Example usage:
birth_date = "January 24, 2015 22:00:00"
puts "If you were born on #{birth_date}, your gigasecond anniversary would be on #{gigasecond_anniversary(birth_date)}."
