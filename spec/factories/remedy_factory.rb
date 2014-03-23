FactoryGirl.define do
  factory :remedy, class: Remedy do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
  end
end