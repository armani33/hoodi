class ResponsesController < ApplicationController
  def create
    @favour = Favour.find(params[:favour_id])
    @response = response.new(response_params)
    @response.favour = @favour
    if @response.save
      respond_to do |format|
        # format.html { redirect_to root_path }
        format.js
      end
    else
      respond_to do |format|
        # format.html { render root_path }
        format.js
      end
    end
  end

  private

  def response_params
    params.require(:response).permit(:content, :favour_id)
  end
end
