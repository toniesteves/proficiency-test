# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name {Faker::Name.name}
    description {Faker::Lorem.sentence}
    status {Faker::Number.positive}
  end
end
