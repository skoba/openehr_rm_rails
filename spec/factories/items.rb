FactoryGirl.define do
  factory :item do
    
  end

  factory :cluster do
    path '/[openEHR-EHR-COMPOSITION.sample.v1]/content_item/[openEHR-EHR-ENTRY.sample.v1]/items/[openEHR-EHR-CLUSTER.sample.v1]'
    archetypeid 'openEHR-EHR-CLUSTER.sample.v1'
    name 'CLUSTER sample'
    item
  end

  factory :element do
    path '/[openEHR-EHR-COMPOSITION.sample.v1]/content_item/[openEHR-EHR-ENTRY.sample.v1]/items/value'
    archetypeid 'openEHR-EHR-CLUSTER.sample.v1'
    name 'value'
    item
    after(:create){|e| create :dv_text, element: e}
  end
end
