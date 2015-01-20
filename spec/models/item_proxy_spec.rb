require 'rails_helper'

RSpec.describe ItemProxy, :type => :model do
  let(:item_proxy) {build :item_proxy}

  it {is_expected.to be_valid}
  it {is_expected.to belong_to :cluster}
  it {is_expected.to have_many :items}
end
