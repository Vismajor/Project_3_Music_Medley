class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @song = Song.new
  end

  def index
    @songs = Song.all
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
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
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