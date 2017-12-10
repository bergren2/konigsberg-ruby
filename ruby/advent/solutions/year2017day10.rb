class Year2017Day10
  include AdventSolvable

  def initialize input, part
    if part == 1
      @inputs = input.split(/,\s*/).map { |i| i.to_i }
    else
      @inputs = input.each_byte.to_a + [17, 31, 73, 47, 23]
    end

    @ring = Ring.new(256)
    @current_pos = 0
    @skip_size = 0
    @part = part
  end

  def solution
    if @part == 1
      run_round
      @ring[0] * @ring[1]
    else # assume part 2
      (1..64).each { run_round }
      @ring.to_a.each_slice(16).map { |a| "%02x" % a.reduce(:^) }.join("")
    end
  end

  def run_round
    @inputs.each do |length|
      reverse_section @ring, @current_pos, length

      @current_pos = (@current_pos + length + @skip_size) % @ring.size
      @skip_size += 1
    end
  end

  def reverse_section ring, index, length
    section = ring.slice(index, length).reverse
    (0...length).each do |i|
      ring[index + i] = section[i]
    end
  end
end

class Ring
  include Enumerable

  def initialize size_or_enumerable
    if size_or_enumerable.kind_of? Enumerable
      @list = size_or_enumerable.to_a
    else
      @list = (0...size_or_enumerable).to_a
    end
    @start = 0
  end

  def [](index)
    @list[(@start + index) % @list.size]
  end

  def []=(index, value)
    @list[(@start + index) % @list.size] = value
  end

  def slice start, length
    dlist = @list * 2
    dlist.slice(start, length)
  end

  def size
    @list.size
  end

  def to_a
    @list
  end

  def to_s
    @list.to_s
  end
end
