# DV Text is a text data container
class DvText < DataValue
  def value
    txt_value
  end

  def value=(value)
    self.txt_value = value
  end
end
