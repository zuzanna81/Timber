FactoryBot.define do
  factory :family_tree do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    relationship { Faker::HowIMetYourMother.character }
    date_of_birth { Faker::Date.birthday(0, 120) }
    image { Faker::Avatar.image }
  end
end
