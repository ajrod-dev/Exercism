def flatten_list(nested_list)
  nested_list.flat_map do |item|
    if item.is_a?(Array)
      flatten_list(item)
    else
      item.nil? ? [] : [item]
    end
  end
end

# Example usage:
input = [1, [2, 3, nil, 4], [nil], 5]
output = flatten_list(input)
puts "Output: #{output}"
