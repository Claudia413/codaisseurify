FactoryGirl.define do
  factory :artist do
    name {Faker::Name.name}
    rating {Faker::Number.between(1, 5)}
  end
end
