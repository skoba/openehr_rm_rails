require 'rails_helper'

RSpec.describe Composition, :type => :model do
  let(:composition) { build :composition }

  it {is_expected.to be_valid}
  it {is_expected.to have_many :content_items}
end
