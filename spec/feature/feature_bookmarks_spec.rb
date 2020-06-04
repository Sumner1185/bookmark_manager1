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
    Bookmark.create(url: 'http://www.testsite.com', title: 'Test')
    visit('/bookmarks')

    expect(page).to have_link('Test', href: 'http://www.testsite.com')
  end

  scenario 'deletes a bookmark from the list' do
    Bookmark.create(url: 'http://www.testsite.com', title: 'Test')
    visit('/bookmarks')
    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Test', href: 'http://www.testsite.com')
  end

end
