FactoryBot.define do
  factory :user do
    name "Test User"
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(10, 20) }
  end
end
