require 'rails_helper'

RSpec.feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in
    create_todo 'Buy bananas'
    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).to_not display_completed_todo 'Buy bananas'
    expect(page).to     display_todo 'Buy bananas'
  end
end
