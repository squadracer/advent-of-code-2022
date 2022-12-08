class VFile
  attr_reader :name, :size, :parent
  def initialize(name, size, parent)
    @name = name
    @size = size
    @parent = parent
  end
end

class Directory
  def initialize(name, parent)
    @nodes = {}
  end
  
  def []=(cname, node)
    @nodes[cname] = node
  end
  
  def [](cname)
    @nodes[cname]
  end
  
  def size
    @size ||= @nodes.values.sum(&:size)
  end

  def each_dir(&block)
    yield self
    @nodes.values.each do |n|
      next if n.is_a?(VFile)
      n.each_dir(&block)
    end
  end
end

module Day07
  def self.parse(input)
    current = {name: '/'}
    root = current = Directory.new('/', nil)
    input.lines.each do |line|
      case line
      when /\$ cd \//
        current = root
      when /\$ cd \.\./
        current = current.parent
      when /\$ cd (\w*)/
        current = current[$1]
      when /\$ ls/
        nil
      when /dir (\w*)/
        dir = Directory.new($1, current)
        current[$1] = dir
      else
        size, name = line.split
        size = size.to_i
        file = VFile.new(name, size, current)
        current[name] = file
      end
    end
    root
  end

  def self.part1(input)
    root = parse(input)
    size = 0
    root.each_dir do |dir|
      size += dir.size if dir.size <= 100_000
    end
    size
  end

  def self.part2(input)
    root = parse(input)
    sizes = []
    root.each_dir do |dir|
      sizes << dir.size
    end
    sizes.select{root.size - _1 < 40_000_000}.min
  end
end
