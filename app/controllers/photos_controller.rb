class PhotosController < ApplicationController

  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    if @photo.save
      flash[:notice] = "Successfully created a new photo!"
    else
      flash[:alert] = "Error, no photo was created"
      render :new
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
