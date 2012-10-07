class User < ActiveRecord::Base
  attr_accessible :lat, :lon, :map_id, :name
end
