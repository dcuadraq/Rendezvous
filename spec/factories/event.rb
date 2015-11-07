FactoryGirl.define do
  factory :event do
    name       { Faker::Name.title }
    descripion { Faker::Lorem.paragraph }
    duration   { Faker::Lorem.sentence }
    password   'secret_password'
    password_confirmation   'secret_password'
  end
end
