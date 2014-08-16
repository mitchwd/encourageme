# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :letter do
    content "MyText"
    status 1
    read_count 1
    thanks_count 1
    user nil
  end
end
