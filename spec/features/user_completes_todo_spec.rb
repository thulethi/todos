require 'rails_helper'

RSpec.feature 'User completes todos' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy bananas'

    click_on 'Mark complete'

    expect(page).to display_completed_todo 'Buy bananas'
  end
end
