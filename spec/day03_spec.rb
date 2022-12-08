require './days/day03/day03'
RSpec.describe Day03, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day03/sample').read
    expect(Day03.part1(str)).to eq 157
  end

  it 'part 1 works with input' do
    str = File.open('./days/day03/input').read
    expect(Day03.part1(str)).to eq 7872
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day03/sample').read
    expect(Day03.part2(str)).to eq 70
  end

  it 'part 2 works with input' do
    str = File.open('./days/day03/input').read
    expect(Day03.part2(str)).to eq 2497
  end
end
