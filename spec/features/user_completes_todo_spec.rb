require 'rails_helper'

RSpec.feature 'User completes todos' do
  scenario 'successfully' do
    sign_in

    click_on  'Add a new todo'
    fill_in   'Title',	with: 'Buy bananas'
    click_on  'Submit'

    click_on 'Mark complete'

    expect(page).to have_css('.todos li.completed', text: 'Buy bananas')
  end
end
