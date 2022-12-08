module Day02
  def self.parse(input)
    input.split("\n").map(&:split)
  end

  def self.score(my_shape, diff)
    my_shape + [3,6,0][diff] + 1
  end

  def self.part1(input)
    input = parse(input)
    input.sum do |opponent,me|
      opponent_shape = 'ABC'.index(opponent)
      my_shape = 'XYZ'.index(me)
      diff = (my_shape - opponent_shape)%3
      score(my_shape, diff)
    end
  end

  def self.part2(input)
    # x = loose, y = draw, z = win
    input = parse(input)
    input.sum do |opponent,me|
      opponent_shape = 'ABC'.index(opponent)
      diff = 'YZX'.index(me)
      my_shape = (opponent_shape + diff)%3
      score(my_shape, diff)
    end
  end
end
