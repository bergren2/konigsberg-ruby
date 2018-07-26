require "advent_solvable"

class Year2017Day13
  include AdventSolvable

  def initialize(filename, part)
    @layers = Hash[File.new(resource_path(filename)).each_line.map { |l| l.split(": ").map(&:to_i) }]
    @part = part
  end

  def solution
    if @part == 1
      max = @layers.keys.max
      sev = 0

      # iterate time
      (0..max).each do |t|
        # calc scan level in layer t, starting at 0
        next unless @layers[t]
        sev += @layers[t] * t if scan_depth(t, @layers[t]).zero?
      end

      sev
    else # assume part 2
      #
    end
  end

  def scan_depth(time, range)
    unfolded_range = 2 * (range - 1)
    d = time % unfolded_range
    if d > range
      unfolded_range - d
    else
      d
    end
  end
end
