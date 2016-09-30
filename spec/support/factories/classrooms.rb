# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    entry_at {Faker::Date.forward(23)}
  end
end
