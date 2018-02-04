class AlbumsController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
  end

end
