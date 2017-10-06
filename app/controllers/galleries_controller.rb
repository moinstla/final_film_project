class GalleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  before_action :only => [:new, :create, :edit, :update, :destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to galleries_path
    else
      render :new
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update(gallery_params)
      redirect_to galleries_path
    else
      render :edit
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to galleries_path
  end

private
  def gallery_params
    params.require(:gallery).permit(:title, :description)
  end
end
