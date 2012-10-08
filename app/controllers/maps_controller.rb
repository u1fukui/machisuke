class MapsController < ApplicationController

  def show

    # 地図の取得
    key = params[:key]
    @map = Map.find_by_key(key)
    
    if request.mobile? and request.mobile.position
      # ユーザ追加
      @user = User.new
      @user.lat = request.mobile.position.lat
      @user.lon = request.mobile.position.lon
      @user.map_id = @map.id
      @user.save
    end

    @users = User.find_all_by_map_id(@map.id)
  end

end
