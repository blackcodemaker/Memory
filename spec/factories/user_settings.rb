FactoryGirl.define do
  trait :with_30_min_spaced_time_interval do
    spaced_time_interval_minutes 30
  end

  trait :with_1_hr_spaced_time_interval do
    spaced_time_interval_minutes 60
  end

  factory :user_settings do
  end
end
