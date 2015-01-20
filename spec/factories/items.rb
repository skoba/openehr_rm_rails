FactoryGirl.define do
  factory :item do
    
  end

  factory :cluster do
    item
  end

  factory :element do
    item
    after(:create){|e| create :dv_text, element: e}
  end
end
