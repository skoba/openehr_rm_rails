require 'rails_helper'

RSpec.describe ContentItemProxy, :type => :model do
  let(:content_item_proxy) {build :content_item_proxy}

  it {is_expected.to be_valid}
  it {is_expected.to have_many :content_items}
end
