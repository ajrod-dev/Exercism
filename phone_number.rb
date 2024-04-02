def clean_phone_number(phone_number)
  # Remove all non-digit characters from the phone number
  cleaned_number = phone_number.gsub(/\D/, '')

  # Remove leading '1' if present (country code for NANP)
  cleaned_number.sub!(/^1/, '') if cleaned_number.size == 11 && cleaned_number.start_with?('1')

  # Check if the cleaned number has the correct length (10 digits)
  if cleaned_number.size == 10
    return cleaned_number
  else
    return nil  # Return nil for invalid phone numbers
  end
end

# Test cases
phone_numbers = [
  "+1 (613)-995-0253",
  "613-995-0253",
  "1 613 995 0253",
  "613.995.0253"
]

phone_numbers.each do |number|
  cleaned_number = clean_phone_number(number)
  if cleaned_number
    puts "Original: #{number}, Cleaned: #{cleaned_number}"
  else
    puts "Invalid phone number: #{number}"
  end
end
