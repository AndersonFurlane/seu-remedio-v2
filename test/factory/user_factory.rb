Factory.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email){ |e| "seuremedio#{ e }@test.com" }
    phone { Faker::PhoneNumber.phone_number }
    birthday { Date.today - rand(500) }
  end
end