FactoryBot.define do
  factory :user do
    email "MyEmail@hotmail.com"
    password "MyPassword"
    password_confirmation "MyPassword"
    family_name "The Simpsons"
  end
end
