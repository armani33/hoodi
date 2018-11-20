class PagesController < ApplicationController
  def home
    @informations = Information.all
    @information = Information.new
    @favour = Favour.new
    @event = Event.new
  end
end
