require "ring"

class KnotHash
  attr_accessor :val

  def initialize(input)
    @ring = KnotHashRing.new(input.each_byte.to_a + [17, 31, 73, 47, 23])
    @val = run_hash
  end

  private

  def run_hash
    64.times { @ring.run_round }
    @ring.to_a.each_slice(16).map { |a| format("%02x", a.reduce(:^)) }.join("")
  end
end

class KnotHashRing
  def initialize(inputs)
    @ring = Ring.new(256)
    @inputs = inputs
    @current_pos = 0
    @skip_size = 0
  end

  def run_round
    @inputs.each do |length|
      reverse_section @ring, @current_pos, length

      @current_pos = (@current_pos + length + @skip_size) % @ring.size
      @skip_size += 1
    end
  end

  def to_a
    @ring.to_a
  end

  def [](index)
    @ring[index]
  end

  private

  def reverse_section(ring, index, length)
    section = ring.slice(index, length).reverse
    (0...length).each do |i|
      ring[index + i] = section[i]
    end
  end
end
