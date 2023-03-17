class Solver
  def initialize(number)
    @number = number
  end

  def factorial
    if @number.zero?
      1
    elsif @nnumber.negative?
      'Please enter a positive integer'
    else
      @number * Solver.new(@number - 1).factorial
    end
  end
end
