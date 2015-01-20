FactoryGirl.define do
  factory :composition do
    after(:create) do |composition|
      create :section
      create :entry
    end   
  end
end
