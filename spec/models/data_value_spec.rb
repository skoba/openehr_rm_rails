require 'rails_helper'

RSpec.describe DataValue, :type => :model do
  describe "text value" do
    let(:dv_text) { build :dv_text }
    subject {dv_text}

    it {is_expected.to be_valid}

    it 'text_value should be assigned properly' do
      expect(dv_text.txt_value).to eq 'Test DvText'
    end

    it 'value should be aliases to txt_value' do
    	  expect(dv_text.value).to eq 'Test DvText'
    end
  end

  describe "amount value" do
    let(:dv_amount) { build :dv_amount }
    subject { dv_amount }

    it { is_expected.to be_valid }

    it 'amount value should be assigned properly' do
      expect(dv_amount.amount_value).to be_within(0.1).of(9.99)
    end

    it 'value should be aliase of amount_value of DvAmount' do
      expect(dv_amount.value).to be_within(0.1).of 9.99
    end
  end
end
