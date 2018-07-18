class Year2017Day8
  include AdventSolvable

  def initialize filename, part
    @part = part
    @instructions = File.readlines(resource_path(filename)).map { |l| Instruction.new(l) }
    @registers = Registers.new
  end

  def solution
    @instructions.each { |i| i.execute(@registers) }
    if @part == 1
      @registers.max
    else # assume part 2
      @registers.highest_val
    end
  end
end

class Instruction
  def initialize string
    m = /(\w+) (\w+) ([-\d]+) if (\w+) ([!<>=]+) ([-\d]+)/.match string

    @lambda_instruction = create_instruction(m[1].to_sym, m[2].to_sym, m[3].to_i)
    @lambda_condition = create_condition(m[4].to_sym, m[5].to_sym, m[6].to_i)
  end

  def create_instruction register_to_change, change_direction, change_amount
    case change_direction
    when :inc
      return lambda do |registers|
        registers[register_to_change] += change_amount
      end
    when :dec
      return lambda do |registers|
        registers[register_to_change] -= change_amount
      end
    end
    raise "Can't create instructions from #{register_to_change}, #{change_direction}, #{change_amount}"
  end

  def create_condition condition_register, comparison, condition_number
    case comparison
    when :==
      return lambda do |registers|
        registers[condition_register] == condition_number
      end
    when :!=
      return lambda do |registers|
        registers[condition_register] != condition_number
      end
    when :<
      return lambda do |registers|
        registers[condition_register] < condition_number
      end
    when :<=
      return lambda do |registers|
        registers[condition_register] <= condition_number
      end
    when :>
      return lambda do |registers|
        registers[condition_register] > condition_number
      end
    when :>=
      return lambda do |registers|
        registers[condition_register] >= condition_number
      end
    end
    raise "Can't create condition from #{condition_register}, #{comparison}, #{condition_number}"
  end

  def execute registers
    @lambda_instruction.call(registers) if @lambda_condition.call(registers)
  end
end

class Registers
  attr_reader :highest_val

  def initialize
    @r = {}
    @highest_val = 0
  end

  def [](key)
    if @r.key? key
      @r[key]
    else
      @r[key] = 0
    end
  end

  def []=(key, val)
    @highest_val = val if val > @highest_val
    @r[key] = val
  end

  def max
    @r.max_by{ |key, val| val }[1]
  end
end
