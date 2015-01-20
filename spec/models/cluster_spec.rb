require 'rails_helper'

RSpec.describe Cluster, :type => :model do
  let(:cluster) {create :cluster}

  it {is_expected.to be_valid}

  it {is_expected.to have_many :item_proxies}
  it {is_expected.to have_many :items}
end