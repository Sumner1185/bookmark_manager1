# frozen_string_literal: true

feature 'index page content' do
  scenario 'welcomes user to bookmark site' do
    visit('/')
    expect(page).to have_content('Welcome to Bookmark Manager!')
  end
end
