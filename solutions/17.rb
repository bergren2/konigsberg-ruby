class Problem17
  def self.solve()
    # Letter counts of the number words

    # NOTE: I combined same counts into single variables to
    # make the summation logic below easier to read.
    one_or_two_or_six = 3
    four_or_five_or_nine = 4
    three_or_seven_eight = 5

    ten = 3
    eleven_or_twelve = 6
    fifteen_or_sixteen = 7
    thirteen_or_fourteen_or_eighteen_or_nineteen = 8
    seventeen = 9

    forty_or_fifty_or_sixty = 5
    twenty_or_thirty_or_eighty_or_ninety = 6
    seventy = 7

    hundred = 7
    thousand = 8

    and_word = 3

    # Calculate and sum the letter counts
    sum = 0

    # NOTE: some hardcoding has been done given our range.
    # I'm okay with this because expanding the range easily introduces
    # cases that aren't covered by this code.
    (1..1000).each do |n|
      # calculate places
      ones = n % 10
      tens = n / 10 % 10
      hundreds = n / 100 % 10

      # determine which counts to add
      if tens == 1
        case ones
        when 0
          sum += ten
        when 1, 2
          sum += eleven_or_twelve
        when 5, 6
          sum += fifteen_or_sixteen
        when 3, 4, 8, 9
          sum += thirteen_or_fourteen_or_eighteen_or_nineteen
        when 7
          sum += seventeen
        end
      else
        case tens
        when 4, 5, 6
          sum += forty_or_fifty_or_sixty
        when 2, 3, 8, 9
          sum += twenty_or_thirty_or_eighty_or_ninety
        when 7
          sum += seventy
        end

        case ones
        when 1, 2, 6
          sum += one_or_two_or_six
        when 4, 5, 9
          sum += four_or_five_or_nine
        when 3, 7, 8
          sum += three_or_seven_eight
        end
      end

      case hundreds
      when 1, 2, 6
        sum += one_or_two_or_six
      when 4, 5, 9
        sum += four_or_five_or_nine
      when 3, 7, 8
        sum += three_or_seven_eight
      end

      if hundreds != 0
        sum += hundred
        sum += and_word if tens + ones > 0
      end

      sum += one_or_two_or_six + thousand if n == 1000 # hardcoded given our range
    end

    puts sum
  end
end
