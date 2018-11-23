class PagesController < ApplicationController
  def home

    new_information
    new_favour
    new_event
    # TODO build @posts array
    # @posts = []
    nearby_users
    find_informations
    find_events
    find_favours
    merge = @informations + @events + @favours
    @posts = merge.sort! { |x, y| y.created_at <=> x.created_at }

    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude
      }
    end
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

  def nearby_users
    @nearby_users = User.near([current_user.longitude, current_user.latitude], 2)

    # this is how we will localize content
    # iterate over nearby users and for each user call
    # user.informations, user.favours, user.events
    # we then iterate over each post array
    #injecting their post items into the html
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
