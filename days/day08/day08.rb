module Day08
  def self.parse(input)
    input.lines.map{_1.chomp.chars.map(&:to_i)} # array[][]
  end

  def self.compute_trees(grid)
    trees = []
    (0...grid.size).each do |l|
      height = -1
      # from left
      (0...grid[0].size).each do |c|
        if height < grid[l][c]
          trees << [l, c]
          height = grid[l][c]
        end
      end
      height = -1
      # from right
      (grid[0].size-1).downto(0).each do |c|
        if height < grid[l][c]
          trees << [l, c]
          height = grid[l][c]
        end
      end
    end
    (0...grid[0].size).each do |c|
      height = -1
      # from top
      (0...grid.size).each do |l|
        if height < grid[l][c]
          trees << [l, c]
          height = grid[l][c]
        end
      end
      height = -1
      # from bottom
      (grid.size-1).downto(0).each do |l|
        if height < grid[l][c]
          trees << [l, c]
          height = grid[l][c]
        end
      end
    end
    trees
  end

  def self.part1(input)
    compute_trees(parse(input)).uniq.size
  end

  def self.part2(input)
    grid = parse(input)
    best_score = 0
    (1...grid.size-1).each do |l|
      (1...grid[0].size-1).each do |c|
        score = 1

        v = c + 1
        v += 1 while v < grid.size - 1 && grid[l][v] < grid[l][c]
        score *= (v - c).abs

        v = c - 1
        v -= 1 while v > 0 && grid[l][v] < grid[l][c]
        score *= (v - c).abs

        v = l - 1
        v -= 1 while v > 0 && grid[v][c] < grid[l][c]
        score *= (v - l).abs

        v = l + 1
        v += 1 while v < grid.size - 1 && grid[v][c] < grid[l][c]
        score *= (v - l).abs

        best_score = [best_score, score].max
      end
    end
    best_score
  end
end
