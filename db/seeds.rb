require 'faker'

puts 'Destroying old database...'
User.destroy_all
Island.destroy_all
Booking.destroy_all

puts "Generating 5 users"

5.times do
  user = User.new(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.free_email,
                  password: Faker::Number.number(6),
                  username: Faker::Name.middle_name,
                  photo: 'url')
  user.save!
end

puts "Finished generating users"

puts "Generating 10 islands"

difficulty_level = %w[easy medium hard very/ hard]
10.times do
  island = Island.new(name: Faker::Artist.name,
                      location: Faker::Address.country,
                      activities: Faker::Color,
                      size: Faker::Science.element,
                      price: Faker::Number.between(1000, 10000),
                      difficulty: difficulty_level.sample,
                      photo: 'url2',
                      user: User.find(rand(1..5)))
  island.save!
end

puts "Finished generating islands"

puts "Generating 3 bookings"

3.times do
  booking = Booking.new(date: Faker::Date.between(2.days.ago, Date.today),
                        island: Island.find(rand(1..10)),
                        user: User.find(rand(1..5)))
  booking.save!
end

puts "Finished generating bookings"

puts "Done seeding!"
