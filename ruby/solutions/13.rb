class Problem13
  include EulerSolvable

  def solution
    File.open(resource_path("prob13.txt"), "r") do |file|
      sum = 0

      file.each_line do |s|
        sum += s.strip.to_i
      end

      sum.to_s[0...10].to_i
    end
  end
end
