class MessagesController < ApplicationController

  def create
    # binding.pry
    @postable = Favour.find(params[:favour_id])
    @message = Message.new(message_params)
    @message.favour_id = @postable.id
    @message.user = current_user
    if @message.save!
      respond_to do |format|
        format.html { redirect_to message_path }
      end
    else
      respond_to do |format|
        format.html { render root_path }
      end
    end
  end

  def message_params
    params.require(:message).permit(:help_content, :favour_id, :phone, :email)
  end

end
