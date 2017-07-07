FactoryGirl.define do
  factory :user do
    email 'sweet@boy'
    password 'example'
    password_confirmation "example"
    admin true
  end
end
