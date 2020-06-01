feature 'Bookmark page' do

  scenario 'shows all bookmarks to user' do
    visit("/")
    click_on("view all bookmarks")
    expect(page).to have_content("https://www.google.co.uk/")
    expect(page).to have_content("https://makers.tech/")
    expect(page).to have_content("https://www.wikipedia.org/")
  end
end
