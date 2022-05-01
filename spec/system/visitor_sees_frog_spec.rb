require 'rails_helper'

describe 'I have seen a frog!' do
  it 'sucessfully with its average age' do 
      target_frog = Frog.create!(
      name: 'Rebeca',
      scientific_name: 'Common frog',
      age: 5,
      on_sale: true
    )

    Frog.create!(
      name: 'Peepaola',
      scientific_name: 'Not so rare frog',
      age: 2,
      on_sale: true
    )

    Frog.create!(
      name: 'Ana Bolena',
      scientific_name: 'Rare frog',
      age: 3,
      on_sale: true
    )

    visit frog_path(target_frog)

    expect(page).to have_content('This frog is above the average frogs age')
  end

  it 'sucessfully' do 
    Frog.create!(
        name: 'Rebeca',
        scientific_name: 'Common frog',
        age: 5,
        on_sale: true
      )

    visit root_path
    click_on 'Frog Gallery'
    click_on 'Rebeca'
    
    expect(page).to have_content('Rebeca')
    expect(page).to have_content('Common frog')
    expect(page).to have_content('5 anos')
    expect(page).to have_content('Yes')
    end
  end
