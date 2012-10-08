class MapsController < ApplicationController

  def show

    # $BCO?^$N<hF@(B
    key = params[:key]
    @map = Map.find_by_key(key)
    
    if request.mobile? and request.mobile.position
      # $B%f!<%6DI2C(B
      @user = User.new
      @user.lat = request.mobile.position.lat
      @user.lon = request.mobile.position.lon
      @user.map_id = @map.id
      @user.save
    end

    @users = User.find_all_by_map_id(@map.id)
  end

end
