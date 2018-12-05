require "advent_solvable"
require "date"

class Year2018Day4
  include AdventSolvable

  def initialize(filename, part)
    @part = part
    @records = File.open(resource_path(filename), &:readlines).map(&:strip).map { |s| Record.new(s) }.sort
  end

  def solution
    if @part == 1
      guards = []
      guard_records = @records.slice_before(&:guard)

      guard_records.each do |records|
        # first record is guard starting shift
        id = records.slice!(0).guard
        existing_guard = guards.find { |g| g.id == id }
        guard = existing_guard || Guard.new(id)
        guards << guard unless existing_guard

        # every next pairs of records are sleeps and wakes
        records.each_slice(2) do |a|
          guard.add_sleep(a[0].timestamp, a[0].timestamp.minute...a[1].timestamp.minute)
        end
      end

      g = guards.max_by(&:minutes_asleep)
      g.id * g.minute_most_asleep
    else # part 2
    end
  end
end

class Record
  include Comparable

  attr_reader :timestamp, :action, :guard

  REGEX = /^\[(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})\]\s+(.+)$/

  def initialize(string)
    # e.g. [1518-11-01 00:00] Guard #10 begins shift
    m = REGEX.match(string)
    if m
      @timestamp = DateTime.parse m[1]
      @action = case m[2]
                  # Guard #10 begins shift
                when /Guard #(\d+) begins shift/
                  @guard = $1.to_i
                  :starts
                when "falls asleep"
                  :sleeps
                when "wakes up"
                  :wakes
                else
                  raise ArgumentError.new "Message in wrong format: #{m[2]}"
                end
    else
      raise ArgumentError.new "Record in wrong format: #{string}"
    end
  end

  def <=>(other)
    self.timestamp <=> other.timestamp
  end
end

class Guard
  attr_reader :id

  def initialize(id)
    @id = id.to_i
    @sleeping = {}
  end

  def add_sleep(timestamp, range)
    key = timestamp.strftime("%F")
    @sleeping[key] = [] unless @sleeping.include? key
    @sleeping[key].push(range)
  end

  # only care about hours and minutes
  def minutes_asleep
    return 0 if @sleeping.empty?
    @sleeping.values.flatten.map(&:size).reduce(:+)
  end

  def minute_most_asleep
    return 0 if @sleeping.empty?
    count = Hash.new(0)

    @sleeping.each do |_, ranges|
      ranges.each do |r|
        r.each do |i|
          count[i] += 1
        end
      end
    end

    count.max_by { |_, value| value }[0]
  end

  def ==(other)
    self.id == other.id
  end
end
