class FavouritesController < ApplicationController
  before_filter :load_favourited

  def create
    @favourite = @favourited.favourites.build
    @favourite.user = current_user
    if @favourite.save
      redirect_to :back, notice: ""
    else
      redirect_to :back, notice: ""
    end
  end


  private

  def load_favourited
    @favourited = params[:favourite_type].singularize.classify.constantize.find(params[:id])
  end
end
