class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
      raise ArgumentError unless first_operand.class == Integer
      raise ArgumentError unless second_operand.class == Integer 
      return "Division by zero is not allowed." if second_operand == 0 and operation == "/"
    case operation
    when "+"
      answer = first_operand + second_operand
    when "*"
      answer = first_operand * second_operand
    when "/"
      answer = first_operand / second_operand
    else
      raise UnsupportedOperation if !ALLOWED_OPERATIONS.include?(operation)
    end
    "#{first_operand} #{operation} #{second_operand} = #{answer}"
  end
end


p SimpleCalculator.calculate(33, 0, "/")



