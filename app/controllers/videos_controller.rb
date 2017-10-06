class VideosController < ApplicationController

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @video = @gallery.videos.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @video = @gallery.videos.new(video_params)
    if @video.save
      redirect_to gallery_path(@video.gallery)
    else
      render :new
    end
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to gallery_path(@gallery)
  end

  private
  def video_params
    params.require(:video).permit(:description, :clip)
  end
end
