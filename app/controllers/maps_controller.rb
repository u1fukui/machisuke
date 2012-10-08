class MapsController < ApplicationController

  def show
    key = params[:key]
    @map = Map.find_by_key(key)
    @users = User.find_all_by_map_id(@map.id)
  end

end
