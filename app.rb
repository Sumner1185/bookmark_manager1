# frozen_string_literal: true

require 'sinatra/base'

# bookmark class
class Bookmark < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    "google"
  end
end
