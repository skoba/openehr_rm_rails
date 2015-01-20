FactoryGirl.define do
  factory :content_item do
    composition    
  end

  factory :section do
    composition
  end

  factory :entry do
    content_item
    after(:create) {|e| create :item, entry: e}
  end
end