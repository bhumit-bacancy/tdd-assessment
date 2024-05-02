class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers.empty?
    raise_error_if_negative_numbers
    return "invalid input" if @numbers.include?(',\n')
    return numbers.inject { |sum,num| sum + num }
  end

  def raise_error_if_negative_numbers
    negative_numbers = numbers.select {|num| num.negative?}
    raise "Negative numbers not allowed: #{negative_numbers.join(", ")}" if negative_numbers.any?
  end

  def numbers
    numbers = @numbers.gsub('\n', delimiter).split(delimiter).map {|num| num.to_i}
    numbers
  end

  def delimiter
    return @numbers[0,2] == "//" ? @numbers[2,1] : ","
  end
end