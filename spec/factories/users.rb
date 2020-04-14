FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email { Faker::Internet.email }
    location { Faker::Nation.capital_city }
    phone { Faker::PhoneNumber.cell_phone }
    password { 'password' }
    active { true }
    admin { false }

    factory :invalid_user do 
      first_name { '' }
      last_name { '' }
    end
  end
end
