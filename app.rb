require 'sinatra/base'

class Bookmark < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

end
