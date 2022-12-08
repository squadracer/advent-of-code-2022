module Day06
  def self.parse(input)
  input
  end

  def self.solve(input, n)
    input.chars.each_cons(n).find_index { |array_of_n| array_of_n.uniq.count == n } + n
  end
  def self.part1(input)
    solve(input, 4)
  end

  def self.part2(input)
    solve(input, 14)
  end
end
