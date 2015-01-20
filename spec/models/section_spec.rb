require 'rails_helper'

RSpec.describe Section, :type => :model do
  let(:section) {create :section}

  it {is_expected.to be_valid}

  it {is_expected.to have_many :content_item_proxies}
  it {is_expected.to have_many :content_items}
end