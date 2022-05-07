require 'rails_helper'

describe 'Delete a frog' do 
  it 'sucessfully' do 
    @frog = Frog.create!(
        name: 'Peepaola',
        scientific_name: 'Not so rare frog',
        age: 2,
        on_sale: true,
        description: 'Just paola\'s peepaola frog' 
      )

      visit frogs_path
      click_on 'Peepaola'
      click_on 'Delete frog'

      expect(Frog.count).to eq(0)
  end
end