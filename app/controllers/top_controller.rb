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
    @map.key = UUIDTools::UUID.random_create.to_s()
    if @map.save
      @user.map_id = @map.id
      if @user.save
        return
      end
    end
    # error
    render action: "create"
  end
end
