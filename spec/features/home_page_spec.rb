require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do

  before do
    sign_in User.create(email: 'test@mail.com', password: '123456', password_confirmation: '123456')
  end

  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end