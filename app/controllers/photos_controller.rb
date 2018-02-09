class PhotosController < ApplicationController

  before_action :get_album, only: [:create, :destroy, :edit, :update]
  before_action :get_photo, only: [:destroy, :edit, :update]

  def index
    @photos = current_user.photos
  end

  def new
    @photo = Photo.new
    @album_id = params[:album_id]
  end

  def create
    @photo = @album.photos.new(photo_params)
    if @photo.save
      flash[:notice] = 'Successfully created a new photo!'
      if params.key?(:finish_upload)
        redirect_to album_path(@album)
      else
        redirect_to new_album_photo_path(@album)
      end
    else
      flash[:alert] = 'Error, no photo was created'
      render :new
    end
  end

  def destroy
    @photo.destroy
    flash[:success] = 'The photo was deleted.'
    redirect_to album_photos_path(@album)
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      flash[:alert] = 'Updated successfully'
      redirect_to album_path(@album)
    else
      render :edit
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end

  def get_album
    @album = Album.find(params[:album_id])
  end

  def get_photo
    @photo = Photo.find(params[:id])
  end
end
