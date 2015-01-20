require 'rails_helper'

RSpec.describe Entry, :type => :model do
  let(:entry) {create :entry}

  it {is_expected.to be_valid}

  it {is_expected.to have_many :items}
end