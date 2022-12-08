require './days/day01/day01'
RSpec.describe Day01, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/day01/sample').read
    expect(Day01.part1(str)).to eq 24000
  end

  it 'part 1 works with input' do
    str = File.open('./days/day01/input').read
    expect(Day01.part1(str)).to eq 74198
  end

  it 'part 2 works with sample' do
    str = File.open('./days/day01/sample').read
    expect(Day01.part2(str)).to eq 45000
  end

  it 'part 2 works with input' do
    str = File.open('./days/day01/input').read
    expect(Day01.part2(str)).to eq 209914
  end
end
