require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:contact) { build :contact }

  it { is_expected.to be_valid }
  it { is_expected.to belong_to :party }
end
