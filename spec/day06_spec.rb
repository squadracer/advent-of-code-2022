require './days/day06/day06'
RSpec.describe Day06, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day06/sample').read
    expect(Day06.part1(str)).to eq 7
  end

  it 'part 1 works with input' do
    str = File.open('./days/day06/input').read
    expect(Day06.part1(str)).to eq 1920
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day06/sample').read
    expect(Day06.part2(str)).to eq 19
  end

  it 'part 2 works with input' do
    str = File.open('./days/day06/input').read
    expect(Day06.part2(str)).to eq '??'
  end
end
