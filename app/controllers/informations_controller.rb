class InformationsController < ApplicationController
  def index
    # To use for the menu on the left
    @informations = Information.all
  end

  def new
    @information = Information.new
  end

  def create
    @response = Response.new
    @information = Information.new(information_params)
    @information.user = current_user
    @information.save!
    respond_to do |format|
      format.js
    end
  end

  private

  def information_params
    params.require(:information).permit(:title, :content, :perimeter, :photo)
  end
end
