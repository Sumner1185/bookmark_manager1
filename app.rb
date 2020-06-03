# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark'

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

  get '/add-bookmark' do
    erb(:add_bookmark)
  end

  post '/save-bookmarks' do
    redirect '/bookmarks'
  end
end
