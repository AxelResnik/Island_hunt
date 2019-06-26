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


puts "Finished generating islands"
