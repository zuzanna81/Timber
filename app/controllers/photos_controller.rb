class PhotosController < ApplicationController

  def index
    @photos = current_user.photos 
  end

  def new
    @photo = Photo.new
    @album_id = params[:album_id]
  end

  def create
    album = Album.find(params[:album_id])
    @photo = album.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Successfully created a new photo!"
      redirect_to photos_path
    else
      flash[:alert] = "Error, no photo was created"
      render :new
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "The photo was deleted."
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:alert] = 'Updated successfully'
      redirect_to photos_path
    else
      render :edit
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
