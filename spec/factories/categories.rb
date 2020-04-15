FactoryBot.define do
  factory :category do
    name { Faker::Creature::Animal }

    factory :invalid_category do 
      name { '' }
    end
  end
end
