FactoryBot.define do
  factory :url do
    origin { Faker::Internet.url }
  end
end