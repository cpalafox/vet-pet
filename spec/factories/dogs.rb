# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dog do
    name "Drake"
    age 9
    age_unit "Months"
    weight "23.5"
    weight_unit "kg"
    breed "Husky"
    stage "Puppy"
    size "Large"
  end
end
