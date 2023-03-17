class Solver
  def initialize(n)
    @n = n
  end

  def factorial
    result = if @n == 0
      1
    elsif @n < 0
      'Please enter a positive integer'
    else
      @n * Solver.new(@n-1).factorial
    end
    return result
  end
end