class PagesController < ApplicationController
  def home
    # TODO build @posts array
    # @posts = []
    find_informations
    find_events
    find_favours
    merge = @informations + @events + @favours
    @posts = merge.sort! { |x, y| x.created_at <=> y.created_at }
    #@posts << @events
    # @posts << @favours
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
