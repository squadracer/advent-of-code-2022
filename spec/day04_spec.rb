require './days/day04/day04'
RSpec.describe Day04, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day04/sample').read
    expect(Day04.part1(str)).to eq 2
  end

  it 'part 1 works with input' do
    str = File.open('./days/day04/input').read
    expect(Day04.part1(str)).to eq 464
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day04/sample').read
    expect(Day04.part2(str)).to eq 4
  end

  it 'part 2 works with input' do
    str = File.open('./days/day04/input').read
    expect(Day04.part2(str)).to eq 770
  end
end
