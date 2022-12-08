module Day05
  def self.parse(input)
    stacks, moves = input.split("\n\n")
    stacks = stacks.lines.map { |line| line.chomp.chars }.reverse.transpose.filter { |line| line[0] =~ /\d+/ }.map { |stack| stack - [" "]}
    moves = moves.lines.map { |move| move.scan(/\d+/).map(&:to_i) }
    [stacks,moves]
  end

  def self.part1(input)
    stacks, moves = parse(input)
    moves.each do |count, from, to|
      stacks[to - 1].push(*stacks[from - 1].pop(count).reverse)
    end
    stacks.map(&:last).join
  end

  def self.part2(input)
    stacks, moves = parse(input)
    moves.each do |count, from, to|
      stacks[to - 1].push(*stacks[from - 1].pop(count))
    end
    stacks.map(&:last).join

  end
end
