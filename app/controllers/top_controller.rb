class TopController < ApplicationController
  def index
  end

  def create
  end

  def created
    @user = User.new
    if request.mobile?
      @user.lat = request.mobile.position.lat
      @user.lon = request.mobile.position.lon
    end
  end
end
