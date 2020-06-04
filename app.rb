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

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params['url'], title: params['title'])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    @bookmark = Bookmark.find_by_id(params[:id])
    @bookmark.delete
    redirect '/bookmarks'
    #erb :"bookmarks/id"
  end
end
