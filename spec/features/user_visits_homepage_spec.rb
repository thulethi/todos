require 'rails_helper'

RSpec.feature 'User visits homepage' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'Todos')
  end
end
