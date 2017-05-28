FactoryGirl.define do
  factory :song do
    title {Faker::Lorem.words(3)}
    release_date {Faker::Date.backward(9000)}
  end
end
