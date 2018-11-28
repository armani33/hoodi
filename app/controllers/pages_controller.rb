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
    @response = Response.new
    @message = Message.new
    merge = @informations + @events + @favours
    @posts = merge.sort! { |x, y| y.created_at <=> x.created_at }



    # @users = User.where.not(latitude: nil, longitude: nil)
    @user_marker = {lat: current_user.latitude, lng: current_user.longitude}
    respond_to do |format|
      format.html
      format.js  # <-- will render `app/views/pages/home.js.erb`
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
    # @nearby_users = User.near([current_user.longitude, current_user.latitude], 2)
    @informations = find_informations
    @events = find_events
    @favours = find_favours

    # this is how we will localize content
    # iterate over nearby users and for each user call
    # user.informations, user.favours, user.events
    # we then iterate over each post array
    #injecting their post items into the html
  end

  def find_informations
    if (params[:only_events].present? || params[:only_favours].present?)
      @informations = []
    else
      @informations = Information.all
    end
  end

  def find_events
    if (params[:only_informations].present? || params[:only_favours].present?)
      @events = []
    else
      @events = Event.all
    end
  end

  def find_favours
    if (params[:only_informations].present? || params[:only_events].present?)
      @favours = []
    else
      @favours = Favour.all
    end
  end
end
