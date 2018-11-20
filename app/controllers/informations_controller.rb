class InformationsController < ApplicationController
  def index
    @information = Information.all
  end
end
