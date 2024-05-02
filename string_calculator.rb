class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers.empty?

    return @numbers.to_i unless @numbers.include?(',')
    
    numbers[0].to_i + numbers[1].to_i
  end

  def numbers
    numbers = @numbers.split(',')
    numbers
  end
end