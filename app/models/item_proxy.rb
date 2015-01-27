# Item Proxy class is an inter-proxy between Item and cluster
class ItemProxy < ActiveRecord::Base
  belongs_to :cluster
  has_many :items
end
