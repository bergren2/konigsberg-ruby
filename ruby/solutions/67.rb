class Problem67 < EulerProblem
  def initialize(filename)
    @filename = filename
  end

  def solution
    Problem18.new(@filename).solution
  end
end
