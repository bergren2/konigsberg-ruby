require "euler_solvable"

class Problem67
  include EulerSolvable

  def initialize(filename)
    @filename = filename
  end

  def solution
    Problem18.new(@filename).solution
  end
end
