FactoryBot.define do
  factory :user do
    email "MyEmail@hotmail.com"
    first_name "Daphne"
    password "MyPassword"
    password_confirmation "MyPassword"
    family
  end
end
