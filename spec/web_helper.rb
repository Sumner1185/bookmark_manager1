def add_test_bookmark_to_list
  visit('/')
  click_link('Add Bookmark')
  fill_in('url', with: 'http://www.testsite.com')
  fill_in('title', with: 'Test')
  click_button('Add URL')
end