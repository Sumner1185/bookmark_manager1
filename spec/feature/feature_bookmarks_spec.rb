feature 'Bookmark page' do

  scenario 'shows all bookmarks to user' do
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')

    visit("/bookmarks")
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end

  scenario 'adds a bookmark to the list' do
    visit('/')
    click_link('Add Bookmark')
    fill_in('url', with: 'http://www.testsite.com')
    fill_in('title', with: 'Test')
    click_button('Add URL')

    expect(page).to have_link('Test', href: 'http://www.testsite.com')
  end

end
