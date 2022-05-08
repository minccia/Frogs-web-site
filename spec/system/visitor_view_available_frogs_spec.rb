require 'rails_helper'

describe 'I have seen a frog' do
  it 'Sucessfully' do
    first_frog = create(:frog, scientific_name:'Poisonous frog')
    second_frog = create(:frog, scientific_name:'Common frog')

    visit root_path
    click_on 'Frogs Gallery'

    expect(page).to_not have_content('There are no frogs yet')
    expect(page).to have_css('.frog', count:2)
    expect(page).to have_content(first_frog.scientific_name)
    expect(page).to have_content(second_frog.scientific_name)
  end

  it 'Unless there are not any frogs' do
    visit root_path
    click_on 'Frogs Gallery'
    expect(page).to have_content('There are no frogs yet')
  end
end
