class PagesController < ApplicationController
  def home
    
    new_information
    new_favour
    new_event
    # TODO build @posts array
    # @posts = []
    find_informations
    find_events
    find_favours
    merge = @informations + @events + @favours
    @posts = merge.sort! { |x, y| y.created_at <=> x.created_at }
  end
  
  def new_information
    @information = Information.new
  end
  
  def new_favour
    @favour = Favour.new
  end

  def new_event
    @event = Event.new
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
