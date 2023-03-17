class Solver
  def initialize(number = 0, word = '')
    @number = number
    @word = word
  end

  def factorial
    if @number.zero?
      1
    elsif @number.negative?
      'Please enter a positive integer'
    else
      @number * Solver.new(@number - 1).factorial
    end
  end

  def reverse
    any_arr = @word.chars
    any_arr.reverse!
    any_arr.join
  end

  def fizzbuzz
    if @number.modulo(3).zero? and @number.modulo(5).zero?
      'fizzbuzz'
    elsif @number.modulo(3).zero?
      'fizz'
    elsif @number.modulo(5).zero?
      'buzz'
    end
  end
end
