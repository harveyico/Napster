class AlbumsController < ApplicationController
  def create
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.create(params[:album])
    redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new
  end
end
