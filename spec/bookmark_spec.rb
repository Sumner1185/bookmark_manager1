require 'bookmark'

describe Bookmark do

  it 'should return a list of bookmarks' do
    bookmarks = ["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com"]
    expect(Bookmark.all).to eq bookmarks
  end

end
