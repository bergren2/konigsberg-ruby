class Year2017Day3
  include AdventSolvable

  def initialize start, part
    @start = start
    @part = part
  end

  # 36  35  34  33  32  31
  # 17  16  15  14  13  30
  # 18   5   4   3  12  29
  # 19   6   1   2  11  28
  # 20   7   8   9  10  27
  # 21  22  23  24  25  26
  def solution
    # strat: move along ring to get to axis, then go inward
    # size of square side
    x = (@start**0.5).ceil
    x += 1 if x.even?
    x_squared = x*x # number in bottom right corner
    diff = x_squared - @start
    r = (x-1) / 2 # radius from axis
    moves = r # init to radius b/c we have to move that many inward
    
    # 4 5 6
    # 3   7
    # 2 1 0
    if diff < r
      # move left
      moves += r - diff
    elsif diff < 2*r
      # move right
      moves += diff - r
    elsif diff < 3*r
      # move up
      moves += 3*r - diff
    elsif diff < 4*r
      # move down
      moves += diff - 3*r
    elsif diff < 5*r
      # move right
      moves += 5*r - diff
    elsif diff < 6*r
      # move left
      moves += diff - 5*r
    elsif diff < 7*r
      # move down
      moves += 7*r - diff
    else
      # move up
      moves += diff - 7*r
    end

    moves
  end
end
