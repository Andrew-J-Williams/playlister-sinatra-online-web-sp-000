class SongsController < ApplicationController

  get '/songs' do
      @songs = Song.all
      erb :'/songs/index'
  end

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end

  post '/songs' do
    @song = Song.create(params[:song])
    @song.artist = Artist.find_or_create_by(:artist => params["Artist Name"])
    @song.genre_ids = params[:genres]

    redirect to "/songs/#{@song.name.slug}"
  end

end
