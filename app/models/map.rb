class Map < ActiveRecord::Base
  has_many :user
  attr_accessible :key
end
