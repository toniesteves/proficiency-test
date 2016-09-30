# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name {Faker::Name.name}
    register_number {Faker::Name.name}
    status {Faker::Number.positive}
  end
end
