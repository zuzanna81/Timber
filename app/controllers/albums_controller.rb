class AlbumsController < ApplicationController

  def index
    @photos = Photo.all
    @album = Album.all
  end

  def new
    @album = Album.new
  end

  def show
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    end
  end

  private
  def album_params
    params.require(:album).permit(:name, :id)
  end
end
