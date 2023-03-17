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
    if @number.modulo(3) == 0
      'fizz'
    elsif @number.modulo(5) == 0
      'buzz'
    end
  end
end
