class MessagesController < ApplicationController

  def create
    @favour = Favour.find(params[:favour_id])
  end

  def message_params
    params.require(:messages).permit(:content, :favour_id, :help_content)
  end

end
