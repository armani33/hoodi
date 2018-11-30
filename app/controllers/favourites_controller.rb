class FavouritesController < ApplicationController
  def index
    @response = Response.new
    @favourites = current_user.favourites
  end

  def create
    @favourite = Favourite.new()
    @information = Information.find(params[:information_id])
    @favourite.information = @information
    @favourite.user = current_user
    @favourite.save!
  end
end
