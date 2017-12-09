class Year2017Day9
  include AdventSolvable

  def initialize file_or_stream, part
    if file_or_stream.end_with? ".txt"
      @parser = Parser.new File.new(resource_path(file_or_stream)).each_char
    else
      @parser = Parser.new file_or_stream.each_char
    end
  end

  def solution
    @parser.parse
    @parser.score
  end
end

class Parser
  attr_reader :score

  def initialize enumerable
    @enumerable = enumerable
    @in_garbage = false
    @ignore_next = false
    @score = 0
    @nest_level = 0
  end

  def parse
    @enumerable.each do |c|
      if in_garbage?
        case c
        when ">"
          end_garbage if in_garbage? and not ignore?
        when "!"
          ignore_next if in_garbage? and not ignore?
        else
          nil unless in_garbage? and ignore?
        end
      else
        case c
        when "{"
          create_group unless in_garbage?
        when "}"
          end_group unless in_garbage?
        when "<"
          start_garbage unless in_garbage?
        end
      end
    end
  end

  def ignore?
    if in_garbage? and @ignore_next
      @ignore_next = false
      true
    else
      false
    end
  end

  def ignore_next
    @ignore_next = true
  end

  def start_garbage
    @in_garbage = true
  end

  def end_garbage
    @in_garbage = false
  end

  def in_garbage?
    @in_garbage
  end

  def create_group
    @nest_level += 1
  end

  def end_group
    @score += @nest_level
    @nest_level -= 1
  end
end
