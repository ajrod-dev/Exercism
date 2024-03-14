def flatten_list(nested_list)
  flattened = []

  nested_list.each do |item|
    if item.is_a?(Array)
      nested_flattened = flatten_list(item)
      flattened.concat(nested_flattened) unless nested_flattened.empty?
    elsif !item.nil?
      flattened << item
    end
  end

  flattened
end

# Example usage:
input = [1, [2, 3, nil, 4], [nil], 5]
output = flatten_list(input)
puts "Output: #{output}"
