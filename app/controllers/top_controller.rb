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
    else
      render action: "create"
    end

    @map = Map.new
    @map.key = "aaa"
    if @user.save
      redirect_to "/maps/" + @map.key
    else 
      render action: "create"
    end
  end
end
