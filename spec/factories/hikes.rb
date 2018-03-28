FactoryBot.define do
  factory :hike do
    link { Faker::Internet.url }
    description { Faker::Lorem.paragraph }
    commute_hours { Faker::Number.between(0, 20) }
    title { Faker::StarWars.planet }
    location { Faker::Address.city }
    nearest_town { Faker::Address.city }
    association :user, factory: :user
  end
end
