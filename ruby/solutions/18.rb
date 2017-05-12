class Problem18
  include EulerSolvable

  def initialize(filename)
    @filename = filename
  end

  def solution
    rows = []
    File.open(resource_path(@filename), "r") do |file|
      file.each_line do |line|
        rows << line.split.map { |x| x.to_i }
      end
    end

    totals = Array.new rows.last.size, 0 # init all zeros

    # iterate back through all rows except the first
    while rows.size > 1 do
      current_row = rows.pop
      new_totals = []

      for i in 0...current_row.size-1
        s1 = totals[i] + current_row[i]
        s2 = totals[i+1] + current_row[i+1]
        new_totals << [s1, s2].max
      end

      totals = new_totals
    end

    return totals.pop + rows.pop.pop # one-man party
  end
end
