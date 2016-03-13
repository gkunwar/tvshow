class ShowsController < ApplicationController
  def index
    @shows = Array.new
    User.order('created_at DESC').includes(:shows).map{|u| @shows << u.shows.last}
    render json: @shows
  end
end
