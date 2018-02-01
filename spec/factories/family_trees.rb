FactoryBot.define do
  factory :family_tree do
    last_name { Faker::Name.last_name }
    relationship { Faker::HowIMetYourMother.character }
  end
end
