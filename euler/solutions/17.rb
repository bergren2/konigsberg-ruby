require "euler_solvable"

class Problem17
  include EulerSolvable

  # Letter counts of the number words

  # NOTE: I combined same counts into single variables to
  # make the summation logic below easier to read.
  ONE_OR_TWO_OR_SIX = 3
  FOUR_OR_FIVE_OR_NINE = 4
  THREE_OR_SEVEN_OR_EIGHT = 5

  TEN = 3
  ELEVEN_OR_TWELVE = 6
  FIFTEEN_OR_SIXTEEN = 7
  THIRTEEN_OR_FOURTEEN_OR_EIGHTEEN_OR_NINETEEN = 8
  SEVENTEEN = 9

  FORTY_OR_FIFTY_OR_SIXTY = 5
  TWENTY_OR_THIRTY_OR_EIGHTY_OR_NINETY = 6
  SEVENTY = 7

  HUNDRED = 7
  THOUSAND = 8

  AND_WORD = 3


  def initialize limit
    @limit = limit
  end

  def solution
    # Calculate and sum the letter counts
    sum = 0

    # NOTE: some hardcoding has been done given our range.
    # I'm okay with this because expanding the range easily introduces
    # cases that aren't covered by this code.
    (1..@limit).each do |n|
      # calculate places
      ones = n % 10
      tens = n / 10 % 10
      hundreds = n / 100 % 10

      # determine which counts to add
      if tens == 1
        case ones
        when 0
          sum += TEN
        when 1, 2
          sum += ELEVEN_OR_TWELVE
        when 5, 6
          sum += FIFTEEN_OR_SIXTEEN
        when 3, 4, 8, 9
          sum += THIRTEEN_OR_FOURTEEN_OR_EIGHTEEN_OR_NINETEEN
        when 7
          sum += SEVENTEEN
        end
      else
        case tens
        when 4, 5, 6
          sum += FORTY_OR_FIFTY_OR_SIXTY
        when 2, 3, 8, 9
          sum += TWENTY_OR_THIRTY_OR_EIGHTY_OR_NINETY
        when 7
          sum += SEVENTY
        end

        case ones
        when 1, 2, 6
          sum += ONE_OR_TWO_OR_SIX
        when 4, 5, 9
          sum += FOUR_OR_FIVE_OR_NINE
        when 3, 7, 8
          sum += THREE_OR_SEVEN_OR_EIGHT
        end
      end

      case hundreds
      when 1, 2, 6
        sum += ONE_OR_TWO_OR_SIX
      when 4, 5, 9
        sum += FOUR_OR_FIVE_OR_NINE
      when 3, 7, 8
        sum += THREE_OR_SEVEN_OR_EIGHT
      end

      if hundreds != 0
        sum += HUNDRED
        sum += AND_WORD if tens + ones > 0
      end

      sum += ONE_OR_TWO_OR_SIX + THOUSAND if n == 1000 # hardcoded given our range
    end

    sum
  end
end
