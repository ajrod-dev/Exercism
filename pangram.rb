class Pangram
  def self.pangram?(str)
    result = ''
    str.each_char do |char|
      if char.downcase.match?(/[a-z]/)
        result.concat(char.downcase)
      end
    end
    result = result.chars.sort.to_set
    p result
    result.size >= 26
  end
end

p Pangram.pangram?("abcdefghijklm ABCDEFGHIJKLM")