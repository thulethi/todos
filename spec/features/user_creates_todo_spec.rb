require 'rails_helper'

RSpec.feature 'User creates todo' do
  scenario 'successfully' do
    sign_in # as a method

    create_todo 'Buy bananas'

    expect(page).to display_todo 'Buy bananas'
  end

  scenario 'unsuccessfully' do
  end
end
