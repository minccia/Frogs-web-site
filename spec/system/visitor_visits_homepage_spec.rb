# frozen_string_literal: true

require 'rails_helper'

describe 'Visitor visits homepage' do
  it 'successfully' do
    visit root_path
    expect(page).to have_content('Froggy time!')
  end
end
