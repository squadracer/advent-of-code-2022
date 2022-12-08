require './days/day07/day07'
RSpec.describe Day07, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day07/sample').read
    expect(Day07.part1(str)).to eq 95437
  end

  it 'part 1 works with input' do
    str = File.open('./days/day07/input').read
    expect(Day07.part1(str)).to eq 1886043
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day07/sample').read
    expect(Day07.part2(str)).to eq 24933642
  end

  it 'part 2 works with input' do
    str = File.open('./days/day07/input').read
    expect(Day07.part2(str)).to eq 3842121
  end
end
