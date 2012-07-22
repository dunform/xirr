require 'faker'
FactoryGirl.define do
  factory :investment do |f|
    f.name { Faker::Name.name }
    f.description "Test description"
  end
end

