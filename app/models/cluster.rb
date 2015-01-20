class Cluster < Item
  has_many :item_proxies
  has_many :items, through: :item_proxies
end