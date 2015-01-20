require 'rails_helper'

RSpec.describe Element, :type => :model do
  let(:element) {create :element}

  it {is_expected.to be_valid}

  it {is_expected.to have_one :data_value}
end