require 'rails_helper'

RSpec.describe Item, :type => :model do
  let(:item) {build :item}

  it {is_expected.to be_valid}
  it {is_expected.to belong_to :item_proxy}
end
