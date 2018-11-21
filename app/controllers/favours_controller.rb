class FavoursController < ApplicationController
  def create
    @favour = Favour.new(favour_params)
    @favour.user = current_user
    if @favour.save!
      respond_to do |format|
        format.html { redirect_to root_path(@favour) }
        format.js  # <-- will render `app/views/favours/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render root_path(@favour) }
        format.js  # <-- idem
      end
    end
  end

  private

  def favour_params
    params.require(:favour).permit(:title, :content, :perimeter, :photo)
  end
end
