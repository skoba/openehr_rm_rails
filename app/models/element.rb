# Element class is a leaf of COMPOSITE, it has one data value
class Element < Item
  has_one :data_value
end
