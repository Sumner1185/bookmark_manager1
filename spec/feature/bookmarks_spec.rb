feature 'Bookmark page' do

  scenario 'shows all bookmarks to user' do
    visit("/")
    click_on("view all bookmarks")
    expect(page).to have_content("google")
  end
end
