require './days/dayXX/dayXX'
RSpec.describe DayXX, '#solve' do
  it 'part 1 works with sample' do
    str = File.open('./days/dayXX/sample').read
    expect(DayXX.part1(str)).to eq '??'
  end

  it 'part 1 works with input' do
    str = File.open('./days/dayXX/input').read
    expect(DayXX.part1(str)).to eq '??'
  end

  it 'part 2 works with sample' do
    str = File.open('./days/dayXX/sample').read
    expect(DayXX.part2(str)).to eq '??'
  end

  it 'part 2 works with input' do
    str = File.open('./days/dayXX/input').read
    expect(DayXX.part2(str)).to eq '??'
  end
end
