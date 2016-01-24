class FavouritesController < ApplicationController

def index
  @favourited = find_favourited
  @favourites = @favourited.favourites
end

private 

  def find_favourited
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
