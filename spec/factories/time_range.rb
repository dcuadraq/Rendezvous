FactoryGirl.define do
  factory :time_range do
    initial_time { Faker::Time.forward(1, :morning) }
    end_time { Faker::Time.forward(1, :night)  }
  end
end
