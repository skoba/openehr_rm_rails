class ContentItem < ActiveRecord::Base
  belongs_to :composition
  belongs_to :content_item_proxy
end
