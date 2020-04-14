FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    location { "MyString" }
    phone { "MyString" }
    password_digest { "MyString" }
    active { "" }
    admin { "" }
  end
end
