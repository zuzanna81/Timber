class PhotosController < ApplicationController

  def index
    @photos = Photo.order(created_at: :desc)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Successfully created a new photo!"
      redirect_to photos_path
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
