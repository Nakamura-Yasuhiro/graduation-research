class VideosController < ApplicationController
    before_action :set_video, only: %i(show destroy)

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
        redirect_to action: 'index', notice: '投稿しました'
    else
      render :new
    end
  end

  def index
    @videos = Video.all.order('created_at DESC')
  end

  def show
  end

  def destroy
    redirect_to root_path, notice: '削除しました' if @video.destroy
  end

  private
    def video_params
      params.require(:video).permit(:title, :body, :video)
    end

    def set_video
        @video = Video.find_by(id: params[:id])
      end
end
