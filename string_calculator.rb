class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers.empty?
    return "invalid input" if @numbers.include?(',\n')
    return numbers.inject { |sum,num| sum + num }
  end

  def numbers
    numbers = @numbers.gsub('\n', delimiter).split(delimiter).map {|num| num.to_i}
    numbers
  end

  def delimiter
    return @numbers[0,2] == "//" ? @numbers[2,1] : ","
  end
end