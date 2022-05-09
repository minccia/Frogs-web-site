require 'rails_helper'

describe 'I edited a frog' do 
  it 'Successfully' do 
    @frog = create(:frog)

    visit frog_path(@frog)
    click_on 'Edit frog'

    fill_in 'name', with: 'Peepaola'
    fill_in 'scientific_name', with: 'Sapus saposus'
    fill_in 'age', with: 8
    check 'on_sale'
    fill_in 'description', with: 'Little description'
    click_on 'commit'

    expect(page).to have_content('Peepaola')
    expect(page).to have_content('Sapus saposus')
    expect(page).to have_content(8)
    expect(page).to have_content('Yes')
    expect(page).to have_content('Little description')
  end
end