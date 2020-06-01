require 'bookmark'

describe Bookmark do
  
  it 'should return a list of bookmarks' do
    bookmarks = ["google", "makers"]
    expect(Bookmark.all).to eq bookmarks
  end

end