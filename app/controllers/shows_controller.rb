class ShowsController < ApplicationController
  def index
    @shows = []
    Show.joins(:user).order('users.created_at DESC').group_by(&:user_id).map { |_k,shows| @shows << shows.last }
    render json: @shows
  end
end
