FactoryGirl.define do
  factory :product do
    sequence(:title) { |n| "Programming Ruby #{n} version" }
    price  90.05
    description %{A journey into the mind of a madman}
    image_url 'ruby.jpg'
  end
end
