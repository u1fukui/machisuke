class MapsController < ApplicationController
  
  def create
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

  def create_api
    @user = User.new
    @user.name = params["user_name"]
    @user.lat = params["lat"]
    @user.lon = params["lon"]

    @map = Map.new
    @map.key = UUIDTools::UUID.random_create.to_s()
    if @map.save
      @user.map_id = @map.id
      if @user.save
        res = {"url" => "http://u1fukui.com:3000/maps/#{@map.key}"}
        render :json => res
      end
    end
  end

end
