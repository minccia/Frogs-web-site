require 'rails_helper'

describe 'Delete a frog' do
  it 'sucessfully' do
    frog = create(:frog)

    visit frogs_path
    click_on frog.name
    click_on 'Delete frog'

    expect(Frog.count).to eq(0)
  end
end
