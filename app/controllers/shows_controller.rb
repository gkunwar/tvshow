class ShowsController < ApplicationController
  def index
    render json: Show.where(user_id: params[:user_id])
  end
end
