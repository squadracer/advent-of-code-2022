module Day03
  def self.parse(input)
    input.split.map(&:chars)
  end

  def self.score(input)
    [*'a'..'z',*'A'..'Z'].index(input) + 1
  end

  def self.part1(input)
    input = parse(input)
    input.sum do |x|
      a, b = x[0...x.size/2],x[x.size/2..]
      in_both = (a&b)[0]
      score(in_both)
    end
  end

  def self.part2(input)
    input = parse(input).each_slice(3)
    input.sum do |a,b,c|
      in_both = (a&b&c)[0]
      score(in_both)
    end
  end
end
