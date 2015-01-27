# Base class of EHR
class Composition < ActiveRecord::Base
  has_many :content_items
end
