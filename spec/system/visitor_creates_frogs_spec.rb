require 'rails_helper'

describe 'Visitor creates frogs' do 
  it 'sucessfully' do 
    visit root_path
    click_on 'Create Frogs'

    fill_in 'name', with: 'Peepaola'
    fill_in 'scientific_name', with: 'Sapus venenosus'
    fill_in 'age', with: 8
    check 'on_sale'
    click_on 'commit'

    expect(page).to have_content('Peepaola')
    expect(page).to have_content('Sapus venenosus')
    expect(page).to have_content(8)
    expect(page).to have_content('Yes')
  end
end