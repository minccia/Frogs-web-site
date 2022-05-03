require 'rails_helper'

describe 'Median frogs age' do 
  it 'Even array length median is correct' do 
    Frog.create!(
      name: 'Peepaola',
      scientific_name: 'Not so rare frog',
      age: 4,
      on_sale: true
    )

    Frog.create!(
      name: 'Paulo',
      scientific_name: 'Very rare frog',
      age: 4,
      on_sale: true
    )

    Frog.create!(
      name: 'Holanda Chinês',
      scientific_name: 'Poisonous frog',
      age: 6,
      on_sale: true
    )

    Frog.create!(
      name: 'Rebeca',
      scientific_name: 'Strong frog',
      age: 5,
      on_sale: true
    )

    expect(Frog.median_age).to eq(5)
  end 

  it 'Odd array length median is correct' do 
    Frog.create!(
        name: 'Peepaola',
        scientific_name: 'Not so rare frog',
        age: 4,
        on_sale: true
      )
  
      Frog.create!(
        name: 'Paulo',
        scientific_name: 'Very rare frog',
        age: 4,
        on_sale: true
      )
  
      Frog.create!(
        name: 'Holanda Chinês',
        scientific_name: 'Poisonous frog',
        age: 6,
        on_sale: true
      )
    
    expect(Frog.median_age).to eq(4)
  end
  
  it 'Even array length median is correct' do 
    Frog.create!(
        name: 'Peepaola',
        scientific_name: 'Not so rare frog',
        age: 2,
        on_sale: true
      )
  
      Frog.create!(
        name: 'Paulo',
        scientific_name: 'Very rare frog',
        age: 4,
        on_sale: true
      )
  
      Frog.create!(
        name: 'Holanda Chinês',
        scientific_name: 'Poisonous frog',
        age: 6,
        on_sale: true
      )
  
      Frog.create!(
        name: 'Pipoca',
        scientific_name: 'Food frog',
        age: 10,
        on_sale: true
      )

      expect(Frog.median_age).to eq(5)
  end
end