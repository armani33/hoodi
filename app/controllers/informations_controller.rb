class InformationsController < ApplicationController
  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.user = current_user
    if @information.save!
      respond_to do |format|
        format.html { redirect_to root_path(@information) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render root_path(@information) }
        format.js  # <-- idem
      end
    end
  end

  private

  def information_params
    params.require(:information).permit(:title, :content, :perimeter, :photo)
  end
end
