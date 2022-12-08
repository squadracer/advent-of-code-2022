module Day01
  def self.parse(input)
    elves = input.split("\n\n")
    elves.map { |elf| elf.split("\n").map(&:to_i) }
  end

  def self.part1(input)
    parse(input).map { |elf| elf.sum }.max
  end

  def self.part2(input)
    parse(input).map { |elf| elf.sum }.max(3).sum
  end
end
