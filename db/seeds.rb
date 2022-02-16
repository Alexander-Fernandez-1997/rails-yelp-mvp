require 'faker'
def category
  x = ["chinese", "italian", "japanese", "french", "belgian"]
r = rand(0..4)
return x[r]
end

5.times do
  restaurants = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: "#{category}" )
  restaurants.save
end


