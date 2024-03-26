def is_valid_brackets(s)
  stack = []
  bracket_pairs = { '[' => ']', '{' => '}', '(' => ')' }

  s.each_char do |char|
    if bracket_pairs.key?(char)
      stack.push(char)
    elsif bracket_pairs.value?(char)
      return false if stack.empty? || bracket_pairs[stack.pop] != char
    end
  end

  stack.empty? # If the stack is empty, all brackets were matched correctly
end

# Test cases
puts is_valid_brackets("()")  # true
puts is_valid_brackets("()[]{}")  # true
puts is_valid_brackets("(]")  # false
puts is_valid_brackets("([)]")  # false
puts is_valid_brackets("{[]}")  # true
