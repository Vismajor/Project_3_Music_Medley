class FavouritesController < ApplicationController
  before_filter :load_favourited

  def create
    @favourite = @favourited.favourites.build
    @favourite.user = current_user
    if @favourite.save
      redirect_to root_url, notice: "Favourite was created."
    else
      redirect_to root_url, notice: "Favourite was not created."
    end
  end


  private

  def load_favourited
    @favourited = params[:favourite_type].singularize.classify.constantize.find(params[:id])
  end
end
