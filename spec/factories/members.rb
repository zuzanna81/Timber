FactoryBot.define do
  factory :member do
    first_name "FirstName"
    last_name "LastName"
    relationship "Daddy"
    date_of_birth "1950-07-07"
  end
end
