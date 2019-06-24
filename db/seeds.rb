require 'faker'

puts 'Destroying old database...'
Booking.destroy_all
Island.destroy_all
User.destroy_all

puts "Generating 5 users"
User.create(first_name: "test",
            last_name: "1234",
            email: "test@123.com",
            username: "testingMan",
            photo: "url",
            password: "123456")
users = []
5.times do

  user = User.new(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.free_email,
                  password: '123456',
                  username: Faker::Name.middle_name,
                  photo: 'url')
  user.save!
  users << user
end

puts "Finished generating users"

puts "Generating 10 islands"

difficulty_level = %w[easy medium hard very/ hard]
islands = []
10.times do
  island = Island.new(name: Faker::Artist.name,
                      location: Faker::Address.country,
                      activities: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat, quisquam deleniti quos quo maxime, praesentium excepturi totam sapiente asperiores facere deserunt ipsam sunt eligendi amet, sequi, earum harum a delectus.
                                   Laborum omnis obcaecati eligendi dolore odio cupiditate minus eaque, ipsam voluptatibus iusto error eveniet, expedita soluta, tempora officia ullam vel, autem illum? Reiciendis autem tempora animi perspiciatis quaerat omnis odit!
                                   Ad, dolore totam mollitia. Cupiditate unde, optio ducimus illum. Numquam ipsum nemo obcaecati repellat doloremque quod, nobis eum qui! Commodi porro ut, minima amet delectus voluptates saepe nobis dolor repudiandae!",
                      size: Faker::Science.element,
                      price: Faker::Number.between(1000, 10000),
                      difficulty: difficulty_level.sample,
                      remote_photo_url: 'https://images.unsplash.com/photo-1511710837711-ff54b2f4b29a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
                      user: users.sample)
  island.save!
  islands << island
end

puts "Finished generating islands"

# puts "Generating 3 bookings"

# 3.times do
#   booking = Booking.new(date: Faker::Date.between(2.days.ago, Date.today),
#                         island: islands.sample,
#                         user: users.sample))
#   booking.save!
# end

# puts "Finished generating bookings"

puts "Done seeding!"
