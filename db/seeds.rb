# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all

puts "Creating posts ..."

  post = Post.new(
    title: Faker::Food.dish,
    description: Faker::Food.description,
  	)
  file = URI.open("https://www.windmag.com/media/D%C3%A9fi%20Wind/2018/jour4/JMC_5747.jpg")
  post.photo.attach(io:file, filename:'avatar.png', content_type: 'img/png')
  post.save!

puts "Posts created"

  User.create!(
  	email: 'paulinep@admin.com',
  	first_name: 'pauline',
  	last_name: 'poize',
  	admin: true,
  	race_number: 1,
  	password: '123456'
  )
