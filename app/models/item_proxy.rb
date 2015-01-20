class ItemProxy < ActiveRecord::Base
  belongs_to :cluster
  has_many :items
end
