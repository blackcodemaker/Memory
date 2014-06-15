# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :user_email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    first_name "Joe"
    last_name "Schmo"
    email { generate :user_email }
    password "password"
  end
end
