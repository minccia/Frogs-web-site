require 'rails_helper'

describe 'Median frogs age' do
  it 'Single frog' do
    target_frog = create(:frog)

    expect(Frog.median_age).to eq(target_frog.age)
  end

  it 'Even array length with repeated numbers median is correct' do
    [4, 4, 6, 5].each do |age|
      create(:frog, age: age)
    end

    expect(Frog.median_age).to eq(5)
  end

  it 'Odd array length with repeated numbers median is correct' do
    [4, 4, 6].each do |age|
      create(:frog, age: age)
    end

    expect(Frog.median_age).to eq(4)
  end

  it 'Even array length with different numbers median is correct' do
    [2, 4, 6, 10].each do |age|
      create(:frog, age: age)
    end

    expect(Frog.median_age).to eq(5)
  end

  it 'Odd array length with different numbers median is correct' do
    [4, 5, 6].each do |age|
      create(:frog, age: age)
    end

    expect(Frog.median_age).to eq(5)
  end
end
