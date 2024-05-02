class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers.empty?
    return "invalid input" if @numbers.include?(',\n')
    return @numbers.to_i unless @numbers.include?(',')
    
    numbers.inject { |sum,num| sum + num}
  end

  def numbers
    numbers = @numbers.gsub('\n', ',').split(',').map {|num| num.to_i}
    numbers
  end
end