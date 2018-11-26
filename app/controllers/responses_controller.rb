class ResponsesController < ApplicationController
  def create

    @postable = Favour.find(params[:favour_id]) if params[:favour_id].present?
    @postable = Event.find(params[:event_id]) if params[:event_id].present?
    @postable = Information.find(params[:information_id]) if params[:information_id].present?

    @response = Response.new(response_params)
    @response.postable = @postable
    @response.user = current_user
    if @response.save!
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render root_path }
        format.js
      end
    end
  end

  private


  def response_params
    params.require(:response).permit(:content, :favour_id, :information_id, :event_id)
  end
end
