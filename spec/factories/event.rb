FactoryGirl.define do

  factory :event do
    name        { Faker::Internet.name }
    description { Faker::Lorem.words(10)}
    date        { "2015-06-24 12:30:00" }
  end

end
