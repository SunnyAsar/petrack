FactoryBot.define do
  factory :pet do
    name { "MyString" }
    age { "MyString" }
    location { "MyString" }
    details { "MyText" }
    category { nil }
    user { nil }
  end
end
