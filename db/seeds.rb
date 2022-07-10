# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# apartment_numbers = [101, 102, 201, 202, 301, 302, 401, 402, 501, 502, 601, 602, 701, 702]
apartment_numbers = [
                      101, 102,
                      201, 202,
                      301, 302,
                      401, 402,
                      501, 502,
                      601, 602,
                      701, 702
                    ]
# apartment
apartment_numbers.each do |number|
  Apartment.create({
    number: number
  })
end

# person
25.times  do
	Person.create({
		name: Faker::Name.unique.name,
    age: Faker::Number.number(digits: 2),
    phone_number: Faker::PhoneNumber.subscriber_number(length: 9),
    apartment: Apartment.where(number: apartment_numbers.sample).first
	})
end