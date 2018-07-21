require "euler_solvable"
require "date"

class Problem19
  include EulerSolvable

  def initialize
    @firstdate = Date.new(1901, 1, 1)
    @lastdate = Date.new(2000, 12, 31)
  end

  def solution
    @firstdate.step(@lastdate).select { |d| d.day == 1 and d.sunday? }.size
  end
end
