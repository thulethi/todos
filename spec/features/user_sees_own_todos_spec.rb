require 'rails_helper'

RSpec.feature 'User sees own todos' do
  scenario "doesn't see others' todos" do
    Todo.create!(title: 'Buy bananas', email: 'someone_else@example.com')

    sign_in_as 'someone@example.com'

    expect(page).to_not display_todo 'Buy bananas'
  end
end
