require 'faker'

# puts 'Destroying old database...'
# Booking.destroy_all
# Island.destroy_all
# User.destroy_all

# puts "Generating 5 users"
# User.create(first_name: "test",
#             last_name: "1234",
#             email: "test@123.com",
#             username: "testingMan",
#             photo: "url",
#             password: "123456")
# users = []
# 5.times do

#   user = User.new(first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   email: Faker::Internet.free_email,
#                   password: '123456',
#                   username: Faker::Name.middle_name,
#                   remote_photo_url: 'https://thispersondoesnotexist.com/image')
#   user.save!
#   users << user
# end

# puts "Finished generating users"

# puts "Generating 10 islands"

# difficulty_level = %w[Easy Medium Hard]
# islands = []
# 10.times do
#   island = Island.new(name: Faker::Artist.name,
#                       location: Faker::Address.country,
#                       activities: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat, quisquam deleniti quos quo maxime, praesentium excepturi totam sapiente asperiores facere deserunt ipsam sunt eligendi amet, sequi, earum harum a delectus.
#                                    Laborum omnis obcaecati eligendi dolore odio cupiditate minus eaque, ipsam voluptatibus iusto error eveniet, expedita soluta, tempora officia ullam vel, autem illum? Reiciendis autem tempora animi perspiciatis quaerat omnis odit!
#                                    Ad, dolore totam mollitia. Cupiditate unde, optio ducimus illum. Numquam ipsum nemo obcaecati repellat doloremque quod, nobis eum qui! Commodi porro ut, minima amet delectus voluptates saepe nobis dolor repudiandae!",
#                       size: Faker::Science.element,
#                       price: Faker::Number.between(1000, 10000),
#                       difficulty: difficulty_level.sample,
#                       remote_photo_url: 'https://source.unsplash.com/random',
#                       user: users.sample)
#   island.save!
#   islands << island
# end

# puts "Finished generating islands"

# puts "Generating 3 bookings"

# 3.times do
#   booking = Booking.new(date: Faker::Date.between(2.days.ago, Date.today),
#                         island: islands.sample,
#                         user: users.sample))
#   booking.save!
# end

# puts "Finished generating bookings"

puts 'Destroying old database...'
Transport.destroy_all

CATEGOTY = ['Airplane', 'Helicopter', 'Boat', 'Submarine']


puts "Generating 4 Transports"
Transport.create!(category: "Airplane",
                  description: "Very nice Airplane with Wifi",
                  price: rand(1000..5000),
                  remote_photo_url: 'https://www.offland.com/wp-content/uploads/2018/03/web10-1000x500.jpg',
                  name: 'Cessna Citation Excel')

Transport.create!(category: 'Helicopter',
                  description: 'black helicopter with emergency floatation gear, cargo swing and dual controls from 2018.',
                  price: rand(1000..5000),
                  remote_photo_url: 'https://www.virginexperiencedays.co.uk/content/img/product/large/PHET15-SP1.jpg',
                  name: 'Airbus H125e')

Transport.create!(category: 'Boat',
                  description: 'Yate!',
                  price: rand(1000..5000),
                  remote_photo_url: 'https://ep01.epimg.net/cultura/imagenes/2019/06/14/actualidad/1560497141_605326_1560705087_noticia_normal.jpg',
                  name: 'Picasso')

Transport.create!(category: 'Submarine',
                  description: 'Yellow, Yellow, Submarine',
                  price: rand(1000..5000),
                  remote_photo_url: 'http://1.bp.blogspot.com/-HBXUdm8ty3M/UHtzV2kS2pI/AAAAAAAAECg/GuQ20iYB79c/s1600/Captura+de+pantalla+2012-10-14+a+las+21.21.48.png',
                  name: 'Lucy')

# Transport.create!(category: ,
#                   description: ,
#                   price: ,
#                   remote_photo_url: ,
#                   name: )

# Transport.create!(category: ,
#                   description: ,
#                   price: ,
#                   remote_photo_url: ,
#                   name: )


puts "Finished generating Transports"


puts "Done seeding!"
