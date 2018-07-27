require "advent_solvable"

class Year2017Day13
  include AdventSolvable

  def initialize(filename, part)
    @layers = Hash[File.new(resource_path(filename)).each_line.map { |l| l.split(": ").map(&:to_i) }]
    @part = part
  end

  def solution
    if @part == 1
      sev = 0
      # iterate time
      @layers.each_key do |t|
        # calc scan level in layer t
        sev += t * @layers[t] if scan_depth(t, @layers[t]).zero?
      end

      sev
    else # assume part 2
      delay = 1
      found = false
      last_layer = @layers.keys.max

      until found
        @layers.each_key do |t|
          # calc scan level in layer t
          break if scan_depth(t, @layers[t], delay).zero?
          return delay if t == last_layer
        end

        delay += 1
      end
    end
  end

  def scan_depth(time, range, delay = 0)
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
