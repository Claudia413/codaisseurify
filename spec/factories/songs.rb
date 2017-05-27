FactoryGirl.define do
  factory :song do
    title {Faker::Lorem.words(3)}
    rating {Faker::Number.between(1, 5)}
    release_date {Faker::Date.backward(9000)}
  end
end
