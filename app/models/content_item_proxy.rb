class ContentItemProxy < ActiveRecord::Base
  belongs_to :section
  has_many :content_items
end
