# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin1 = User.create(name: "pamphile", email:"pamphilemkp@gmail.com", password:"123456",admin:"true");

car1 = Car.create( name: 'Mercedes-Benz AMG GT', description: "Mercedes-Benz AMG GT is available in Selenite Grey. Mercedes-Benz AMG GT is also available in 11 colours.", 
price: '$93,550', photo: "https://imgd.aeplcdn.com/1056x594/n/dpca6sa_1475133.jpg?q=75&wm=1", brand: 'Mercedes-Benz AMG GT')


car2 = Car.create( name: 'Bmw 4-series', description: "The 2022 BMW 4 Series is among the most expensive vehicles in the luxury small car class.", price: '$45,800',
 photo: "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_default/v1/editorial/vhs/2022-bmw-4-series-index.png",
  brand: 'Blue Bmw 4-series')


car3 = Car.create( name: 'Audi A3', description: "The Diesel engine is 1968 cc while the Petrol engine is 1395 cc and more", price: '$34,900',
 photo: 'https://images.carandbike.com/car-images/colors/audi/a3/audi-a3-misano-red-pearl-effect.png?v=1', brand: 'Audi A3 Red')


car4 = Car.create( name: 'Dodge Viper', description: "The Dodge Viper, manufactured in the U.S. from 1992 to 2017, is a two-sehttps://file.kelleybluebookimages.com/kbb/base/evox/CP/9261/2016-Dodge-Viper-front_9261_032_2400x1800_PWA.pngat sports car with coupe and convertible versions.",
  price: '$93,000', photo: '', brand: 'Dodge Viper')