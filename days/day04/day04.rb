module Day04
  def self.parse(input)
    input.lines.map{|line| line.split(',').map { |range| Range.new(*range.split('-').map(&:to_i)) } }
  end

  def self.part1(input)
    ranges = parse(input)
    ranges.count { |a, b| a.cover?(b) || b.cover?(a) }
  end

  def self.part2(input)
    ranges = parse(input)
    ranges.count { |a,b| !(a.max < b.min || b.max < a.min)}
  end
end
