# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    uuid "MyString"
    device_token "MyString"
  end
end
