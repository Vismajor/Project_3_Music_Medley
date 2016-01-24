class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def new
    @collection = Collection.new
  end

  def index
    @collections = Collection.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: 'Collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @collection = Collection.new(collection_params) do |collection|
      collection.user = current_user
    end
    if @collection.save
      redirect_to root_path
    else
      redirect_to root_path, notice: @collection.errors.full_messages.first
    end
  end

  private
    def set_collection
      @collection = Collection.find(params[:id])
    end

    def collection_params
      params.require(:collection).permit(:collection, :title, :user_id, :song_id)
    end
end