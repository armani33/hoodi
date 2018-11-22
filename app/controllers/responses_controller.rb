class ResponsesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @response = response.new(response_params)
    @response.post = @post
    if @response.save
      respond_to do |format|
        format.html { redirect_to #home ?? }
        format.js
      end
    else
      respond_to do |format|
        format.html { render #home ?? }
        format.js
      end
    end
  end

  private

  def response_params
    params.require(:response).permit(:content)
  end
end
