feature 'Bookmark page' do

  scenario 'shows all bookmarks to user' do
    visit("/")
    click_on("view all bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
