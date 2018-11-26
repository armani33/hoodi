class EventsController < ApplicationController
  def create
    @response = Response.new
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save!
    respond_to do |format|
      format.js
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :perimeter, :photo, :date, :location, :start_age, :end_age)
  end
end
