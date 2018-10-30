require 'rails_helper'

RSpec.feature 'User creates todo' do
  scenario 'successfully' do
    sign_in # as a method

    click_on  'Add a new todo'
    fill_in   'Title',	with: 'Buy bananas'
    click_on  'Submit'

    expect(page).to have_css('.todos li', text: 'Buy bananas')
  end

  scenario 'unsuccessfully' do
  end
end
