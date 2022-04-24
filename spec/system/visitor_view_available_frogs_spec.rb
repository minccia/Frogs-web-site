# frozen_string_literal: true

require 'rails_helper'

describe 'I have seen a frog' do
  it 'Sucessfully' do
    Frog.create!(
      name: "Rebeca",
      scientific_name: "Sapo normal",
      age: 5,
      on_sale: true
    )

    Frog.create!(
        name: "Daniel",
        scientific_name: "Sapo venenoso",
        age: 3,
        on_sale: false
      )

    visit root_path
    click_on 'Frog Gallery'

    expect(page).to_not have_content('Não há nenhum sapo ainda')
    expect(page).to have_css('.frog', count:2)
    expect(page).to have_content('Sapo venenoso')
    expect(page).to have_content('Sapo normal')
  end

  it 'Unless there are not any frogs' do
    visit root_path
    click_on 'Frog Gallery'
    expect(page).to have_content('Não há nenhum sapo ainda')
  end
end
