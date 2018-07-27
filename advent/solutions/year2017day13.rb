require "advent_solvable"

class Year2017Day13
  include AdventSolvable

  def initialize(filename, part)
    @layers = Hash[File.new(resource_path(filename)).each_line.map { |l| l.split(": ").map(&:to_i) }]
    @part = part
  end

  def solution
    if @part == 1
      calc_cost
    else # assume part 2
      delay = 1
      found = false
      last_layer = @layers.keys.max

      until found
        @layers.keys.each do |t|
          # calc scan level in layer t
          break if scan_depth(t, @layers[t], delay).zero?
          return delay if t == last_layer
        end

        delay += 1
      end
    end
  end

  def calc_cost(delay = 0)
    sev = 0
    # iterate time
    @layers.keys.each do |t|
      # calc scan level in layer t
      sev += t * @layers[t] if scan_depth(t, @layers[t], delay).zero?
    end

    sev
  end

  def scan_depth(time, range, delay)
    d = (time + delay) % unfolded(range)

    if d > range
      unfolded(range) - d
    else
      d
    end
  end

  def unfolded(range)
    2 * (range - 1)
  end
end
