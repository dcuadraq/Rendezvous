FactoryGirl.define do
  factory :assistant do
    name       { Faker::Name.name }
    time_zone { Faker::Address.time_zone }
    email   { Faker::Internet.email }
  end
end
