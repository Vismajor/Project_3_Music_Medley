class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @song = Song.new
  end

  def index
    @search = Song.search(params[:q])
    @songs = @search.result(page: params[:page], per_page: 4)
    render @songs, layout: false if request.xhr?
  end

  def home_index
    @songs = Song.all(page: params[:page], per_page: 4)
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
        format.js   { }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
        format.js   { }
      end
    end
  end

  def create
    @song = Song.new(song_params) do |song|
      song.user = current_user
    end
    if @song.save
      redirect_to root_path
    else
      redirect_to root_path, notice: @song.errors.full_messages.first
    end
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:song, :title, :user_id, :genre_id, :album_id, :collection_id)
    end
end