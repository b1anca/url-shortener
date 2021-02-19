FactoryBot.define do
  factory :url do
    origin { Faker::Internet.url }
    clicks { Faker::Number.positive }
  end
end