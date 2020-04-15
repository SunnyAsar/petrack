FactoryBot.define do
  factory :pet do
    name { Faker::Creature::Animal }
    age { '2 months' }
    location { Faker::Nation.capital_city }
    details { Faker::TvShows::SiliconValley.quote }
    category
    user

    factory :invalid_pet do
      name { '' }
    end 
  end
end
