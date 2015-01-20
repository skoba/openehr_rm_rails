FactoryGirl.define do
  factory :content_item do

  end

  factory :section do
    path '/[openEHR-EHR-COMPOSITION.sample.v1]/content_item/[openEHR-EHR-SECTION.sample.v1]'
    archetypeid 'openEHR-EHR-SECTION.sample.v1'
    name 'SECTION sample'
    composition
  end

  factory :entry do
    path '/[openEHR-EHR-COMPOSITION.sample.v1]/content_item/[openEHR-EHR-ENTRY.sample.v1]'
    archetypeid 'openEHR-EHR-ENTRY.sample.v1'
    name 'ENTRY sample'
    content_item
    after(:create) {|e| create :item, entry: e}
  end
end
