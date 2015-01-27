# Value class related to amouts
class DvAmount < DataValue
  alias_method :value, :amount_value
  alias_method :value=, :amount_value=
end
