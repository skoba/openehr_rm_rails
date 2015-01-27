# headlines
class Section < ContentItem
  has_many :content_item_proxies
  has_many :content_items, through: :content_item_proxies
end
