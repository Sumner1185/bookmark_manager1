# frozen_string_literal: true

require 'sinatra/base'

# bookmark class
class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
end
