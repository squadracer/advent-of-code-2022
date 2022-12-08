require './days/day02/day02'
RSpec.describe Day02, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day02/sample').read
    expect(Day02.part1(str)).to eq 15
  end

  it 'part 1 works with input' do
    str = File.open('./days/day02/input').read
    expect(Day02.part1(str)).to eq 12535
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day02/sample').read
    expect(Day02.part2(str)).to eq 12
  end

  it 'part 2 works with input' do
    str = File.open('./days/day02/input').read
    expect(Day02.part2(str)).to eq 15457
  end
end
