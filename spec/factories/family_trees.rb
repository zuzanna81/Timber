FactoryBot.define do
  factory :family_tree do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    relationship { Faker::HowIMetYourMother.character }
    date_of_birth 2000-01-01
  end
end
