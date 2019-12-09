class Intcode
  def initialize(program)
    @program = program
  end

  def run
    head = 0

    while @program[head] != 99
      op = @program[head]
      n1 = @program[head + 1]
      n2 = @program[head + 2]
      out = @program[head + 3]

      # complete operation
      case op
      when 1 # add
        @program[out] = @program[n1] + @program[n2]
      when 2 # multiply
        @program[out] = @program[n1] * @program[n2]
      else
        raise "Don't understand op '#{op}'"
      end

      # move head to next location
      head += 4
    end

    @program[0]
  end
end