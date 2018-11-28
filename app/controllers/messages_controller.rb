class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render 'pages/message'
  end

  def create
    @postable = Favour.find(params[:favour_id])
    @message = Message.new(message_params)
    @message.favour_id = @postable.id
    @message.user = current_user
    @message.save!
  end

  def message_params
    params.require(:message).permit(:help_content, :favour_id, :phone, :email, :available_time)
  end
end
