class SongsController < ApplicationController

  get '/song' do
    erb :'/songs/index'
  end

end
