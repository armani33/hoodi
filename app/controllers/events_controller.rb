class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      respond_to do |format|
        format.html { redirect_to root_path(@event) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render root_path(@event) }
        format.js  # <-- idem
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :perimeter, :photo)
  end
end
