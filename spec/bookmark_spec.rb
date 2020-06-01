require 'bookmark'

describe Bookmark do

  it 'should return a list of bookmarks' do
    bookmarks = ["https://www.google.co.uk/", "https://makers.tech/", "https://www.wikipedia.org/"]
    expect(Bookmark.all).to eq bookmarks
  end

end
