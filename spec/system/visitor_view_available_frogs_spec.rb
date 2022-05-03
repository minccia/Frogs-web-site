require 'rails_helper'

describe 'I have seen a frog' do
  it 'Sucessfully' do
    Frog.create!(
      name: "Rebeca",
      scientific_name: "Common frog",
      age: 5,
      on_sale: true
    )

    Frog.create!(
        name: "Daniel",
        scientific_name: "Poisonous frog",
        age: 3,
        on_sale: false
      )

    visit root_path
    click_on 'Frog Gallery'

    expect(page).to_not have_content('There are no frogs yet')
    expect(page).to have_css('.frog', count:2)
    expect(page).to have_content('Poisonous frog')
    expect(page).to have_content('Common frog')
  end

  it 'Unless there are not any frogs' do
    visit root_path
    click_on 'Frog Gallery'
    expect(page).to have_content('There are no frogs yet')
  end
end
