require 'faker'

categories = %w[chinese italian japanese french belgian]

5.times do
  restaurant = Restaurant.new(
    {
      name: Faker::Company.name,
      address: "#{Faker::Address.street_address}",
      phone_number: Faker::PhoneNumber.phone_number,
      category: categories.sample
    }
  )
  restaurant.save!
end
