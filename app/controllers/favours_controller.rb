class FavoursController < ApplicationController
  def create
    @response = Response.new
    @message = Message.new
    @favour = Favour.new(favour_params)
    @favour.user = current_user
    @favour.save!
    respond_to do |format|
      format.js
    end
  end

  def show
    @favour = Favour.find(params[:id])
    @message = Message.new
    @response = Response.new # <-- You need this now.
  end

  private
  def favour_params
    params.require(:favour).permit(:title, :content, :perimeter, :photo)
  end
end
