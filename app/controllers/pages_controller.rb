class PagesController < ApplicationController
  def home
    # TODO build @posts array
    find_informations
    find_events
    find_favours
    @posts << @informations
    @posts << @events
    @posts << @favours
  end

  def find_informations
    @informations = Information.all
  end

  def find_events
    @events = Event.all
  end

  def find_favours
    @favours = Favour.all
  end
end
