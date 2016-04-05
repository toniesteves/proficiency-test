# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    entry_at "2016-04-04"
    student nil
    course nil
  end
end
