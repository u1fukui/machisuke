class User < ActiveRecord::Base
  belongs_to :map
  attr_accessible :lat, :lon, :map_id, :name
end
