class Solver
  def initialize(n)
    @n = n
  end

  def factorial
    result = if @n == 0
      1
    else
      @n * Solver.new(@n-1).factorial
    end
    return result
  end
end

fac = Solver.new(10)
puts fac.factorial