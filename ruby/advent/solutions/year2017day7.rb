class Year2017Day7
  include AdventSolvable

  def initialize filename, part
    @discs = {}

    File.readlines(resource_path(filename)).each do |line|
      words = line.split

      holder = words[0]
      weight = /\((\d+)\)/.match(words[1])[1].to_i

      @discs[holder] = {} unless @discs.key? holder
      @discs[holder][:weight] = weight

      holding = []
      (3..words.size-1).each do |i|
        holding << /(\w+),?/.match(words[i])[1]
      end

      holding.each do |program|
        @discs[program] = {} unless @discs.key? program
        @discs[program][:holder] = holder
      end
    end
  end

  def solution
    @discs.select { |key, v| !v.key? :holder }.keys.first
  end
end
