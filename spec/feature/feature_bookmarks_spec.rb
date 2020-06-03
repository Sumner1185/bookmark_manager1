feature 'Bookmark page' do

  scenario 'shows all bookmarks to user' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")

    visit("/")
    click_link("View All Bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end

  scenario 'adds a bookmark to the list' do
    visit("/")
    click_link("Add Bookmark")
    fill_in "url", with: "http://www.testsite.com"
    click_button("Add URL")
    expect(page).to have_content("http://www.testsite.com")
  end

end
