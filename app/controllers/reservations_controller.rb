class ReservationsController < ApplicationController
  def index
    @response = Response.new
    @event = Event.find(params[:event_id])
    @reservations = @event.reservations
  end

  def create
    @reservation = Reservation.new()
    @event = Event.find(params[:event_id])
    @reservation.event = @event
    @reservation.user = current_user
    @reservation.save!
    respond_to do |format|
      format.js
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:event_id)
  end
end
