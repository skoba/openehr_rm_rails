FactoryGirl.define do
  factory :composition do
    path '/[openEHR-EHR-COMPOSITION.sample.v1]'
    archetypeid 'openEHR-EHR-COMPOSITION.sample.v1'
    name 'composition sample'

    after(:create) do |composition|
      create :section
      create :entry
    end   
  end
end
