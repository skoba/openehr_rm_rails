require 'rails_helper'

RSpec.describe ContentItem, type: :model do
  let(:content_item) { build :content_item }

  it { is_expected.to be_valid }
  it { is_expected.to belong_to :composition }
  it { is_expected.to belong_to :content_item_proxy }
end
