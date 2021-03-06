FactoryGirl.define do
  factory :user, class: User do
    name { Faker::Name.name}
    email { Faker::Internet.email }
    password { 'anything' }
    password_confirmation { 'anything' }
  end
end