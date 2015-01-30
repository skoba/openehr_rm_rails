require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:party) { build :person }

  it { is_expected.to be_valid }
  it { is_expected.to have_many :contacts }
  #  it { is_expected.to have_many :addresses }
end
