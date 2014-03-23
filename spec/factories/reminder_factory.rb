FactoryGirl.define do
  factory :reminder, class: Reminder do
    title { Faker::Name.name }
    start_at { Date.today }
    end_at { Date.today + rand(30) + 1 }
    range_days { rand(30) + 1 }
    forever_remedy { false }
    dependent { false }
    dependent_name { Faker::Name.name }
    dependent_email { Faker::Internet.email }

    user { create(:user) }
    remedy { create(:remedy) }
  end
end