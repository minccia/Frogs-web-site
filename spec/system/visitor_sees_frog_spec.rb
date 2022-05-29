require 'rails_helper'

describe 'I have seen a frog!' do
  it 'sucessfully with its average age' do
    [2, 3].each do |age|
      create(:frog, age: age)
    end

    target_frog = create(:frog, age: 5)
    visit frog_path(target_frog)

    expect(page).to have_content("Frog's age is above the average frogs age")
  end

  it 'sucessfully' do
    chosen_frog = create(:frog)

    visit root_path
    click_on(I18n.t('home.index.gallery'))
    click_on chosen_frog.name.to_s

    expect(page).to have_content(chosen_frog.name)
    expect(page).to have_content(chosen_frog.scientific_name)
    expect(page).to have_content(chosen_frog.age)
    expect(page).to have_content('Yes')
  end
end
