module ArmstrongNumbers
  def self.include?(number)
    result = number.to_s.split('').reduce(0) { |sum, num| sum + (num.to_i ** number.to_s.length)}
    result == number
  end
end

p ArmstrongNumbers.include?(153)
