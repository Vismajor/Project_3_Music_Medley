class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  def new
    @gig = Gig.new
  end

  def index
    @gigs = Gig.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig }
      else
        format.html { render :edit }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @gig = Gig.new(gig_params) do |gig|
      gig.user = current_user
    end
    if @gig.save
      redirect_to :back
    else
      redirect_to :back, notice: @gig.errors.full_messages.first
    end
  end

  private
    def set_gig
      @gig = Gig.find(params[:id])
    end

    def gig_params
      params.require(:gig).permit(:gig, :name, :user_id, :address, :starting_time, :status, :longitude, :latitude)
    end
end